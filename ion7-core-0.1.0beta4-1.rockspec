package = "ion7-core"
version = "0.1.0beta4-1"

source = {
    url = "git+https://github.com/Ion7-Labs/ion7-core.git",
    tag = "v0.1.0-beta4",
}

description = {
    summary  = "Silicon-level LuaJIT FFI bindings for llama.cpp",
    detailed = [[
        ion7-core gives LuaJIT direct, zero-overhead access to llama.cpp.
        Model loading, decode, KV cache, sampler chains, custom samplers,
        threadpool sharing, speculative decoding, training, GBNF
        constraints — all driven from Lua via FFI plus a small libcommon
        bridge. The rockspec build vendors llama.cpp as a submodule and
        compiles it together with `ion7_bridge.so`. Backend selection is
        driven by the ION7_BACKEND environment variable :

            ION7_BACKEND=cpu      (default — pure CPU, AVX2 / NEON)
            ION7_BACKEND=vulkan   (cross-vendor GPU)
            ION7_BACKEND=cuda     (NVIDIA — also reads ION7_CUDA_ARCH)
            ION7_BACKEND=rocm     (AMD)
            ION7_BACKEND=metal    (Apple Silicon)

        The build leaves `libllama`, `libggml*`, and `ion7_bridge` under
        `<rocktree>/share/lua/<ver>/ion7/core/_libs/`. The FFI loader
        probes that directory automatically — no LD_LIBRARY_PATH or
        ION7_LIBLLAMA_PATH gymnastics required.
    ]],
    homepage = "https://github.com/Ion7-Labs/ion7-core",
    license  = "MIT-or-later",
}

dependencies = {
    "lua >= 5.1",
    "lua-cjson >= 2.1",
}

external_dependencies = {
    -- The build needs cmake (for vendor/llama.cpp), a C++17 toolchain
    -- (for the bridge), and the headers / libraries of any optional
    -- backend the user selects. luarocks cannot validate those at
    -- declaration time ; the build_command fails loudly when missing.
}

build = {
    type = "command",

    -- Build vendor/llama.cpp + bridge/ion7_bridge.so.
    --
    -- The Makefile-driven build (`make build`) is reused verbatim so
    -- the development and rockspec-install paths agree. The submodule
    -- is initialised on demand (idempotent : a no-op when already
    -- populated by the user's clone).
    build_command = [[
set -e
echo "[ion7-core] backend = ${ION7_BACKEND:-cpu}"

# llama.cpp pin — this commit is what ion7-core's bridge is known
# to build against. Bumping it here is a real upstream change ; do
# not touch lightly.
LLAMA_CPP_REPO="https://github.com/ggerganov/llama.cpp.git"
LLAMA_CPP_SHA="78433f606fde4d7934a02dcbfd910438d28beccd"

if [ ! -f vendor/llama.cpp/CMakeLists.txt ]; then
    echo "[ion7-core] fetching llama.cpp at $LLAMA_CPP_SHA..."
    # luarocks unpacks `git+https://...` sources without preserving
    # the parent repo's .git directory, so `git submodule update`
    # cannot discover the upstream URL. We do a plain clone instead
    # and check out the pinned commit, which works regardless of how
    # luarocks staged the source tree.
    rm -rf vendor/llama.cpp
    mkdir -p vendor
    git clone --filter=tree:0 "$LLAMA_CPP_REPO" vendor/llama.cpp
    git -C vendor/llama.cpp checkout "$LLAMA_CPP_SHA"
fi

# Backend → cmake flags
case "${ION7_BACKEND:-cpu}" in
    cpu)
        BACKEND_FLAGS=""
        ;;
    vulkan)
        BACKEND_FLAGS="-DGGML_VULKAN=ON"
        ;;
    cuda)
        BACKEND_FLAGS="-DGGML_CUDA=ON -DCMAKE_CUDA_ARCHITECTURES=${ION7_CUDA_ARCH:-86}"
        ;;
    rocm)
        BACKEND_FLAGS="-DGGML_HIP=ON"
        ;;
    metal)
        BACKEND_FLAGS="-DGGML_METAL=ON"
        ;;
    *)
        echo "[ion7-core] unknown ION7_BACKEND='${ION7_BACKEND}' (cpu|vulkan|cuda|rocm|metal)" >&2
        exit 1
        ;;
esac

if [ -n "${ION7_LLAMA_CMAKE_EXTRA:-}" ]; then
    BACKEND_FLAGS="$BACKEND_FLAGS $ION7_LLAMA_CMAKE_EXTRA"
fi

echo "[ion7-core] cmake configure: $BACKEND_FLAGS"
# Performance + relocatability flags :
#   GGML_LTO=ON
#       Link-time optimisation. Slower link, ~5-15% throughput gain on
#       inference workloads.
#   LLAMA_CURL=OFF
#       Drop the libcurl dependency. ion7-core never goes through
#       llama.cpp's HuggingFace downloader path.
#   GGML_CCACHE=OFF
#       Silence the "ccache not found" notice. We always build clean.
#   GGML_BACKEND_DL=OFF
#       Backends are linked statically into libggml/libllama. No
#       runtime backend discovery — the rock ships exactly the
#       backend the user asked for via ION7_BACKEND.
#   CMAKE_BUILD_WITH_INSTALL_RPATH=ON + CMAKE_INSTALL_RPATH='$ORIGIN'
#       Single-quoted `$ORIGIN` reaches cmake as the literal string ;
#       the dynamic linker interprets it at load time as "the
#       directory of the loading binary". The .so files locate their
#       siblings in the rock _libs/ directory regardless of where the
#       rock tree is mounted. luarocks template substitution only
#       triggers on `$(VAR)`, so the bare `$ORIGIN` passes through.
#
# ION7_LLAMA_CMAKE_EXTRA appended at the end overrides any of the
# above when the user wants to force-disable LTO, swap a backend
# variant, etc.
cmake -B vendor/llama.cpp/build -S vendor/llama.cpp \
    -DCMAKE_BUILD_TYPE=Release \
    -DBUILD_SHARED_LIBS=ON \
    -DLLAMA_BUILD_TESTS=OFF \
    -DLLAMA_BUILD_EXAMPLES=OFF \
    -DLLAMA_BUILD_SERVER=OFF \
    -DLLAMA_CURL=OFF \
    -DGGML_LTO=ON \
    -DGGML_CCACHE=OFF \
    -DGGML_BACKEND_DL=OFF \
    -DCMAKE_BUILD_WITH_INSTALL_RPATH=ON \
    -DCMAKE_INSTALL_RPATH='$ORIGIN' \
    $BACKEND_FLAGS

echo "[ion7-core] cmake build (this can take a while)..."
cmake --build vendor/llama.cpp/build --config Release -j

echo "[ion7-core] building ion7_bridge..."
# `$PWD` is a regular shell variable. luarocks template substitution
# only triggers on the `$(VAR)` form, so the bare `$PWD` passes through
# untouched.
ROOT="$PWD"
$(MAKE) -C bridge \
    LIB_DIR="$ROOT/vendor/llama.cpp/build/bin" \
    COMMON_LIB_DIR="$ROOT/vendor/llama.cpp/build/common" \
    LLAMA_SRC="$ROOT/vendor/llama.cpp" \
    ION7_RELEASE=1
]],

    -- Lay out the rock tree :
    --   <prefix>/share/lua/<ver>/ion7/                  Lua sources
    --   <prefix>/share/lua/<ver>/ion7/core/_libs/       libllama* + ion7_bridge*
    --   <prefix>/bin/ion7-load.lua                      tarball preamble
    --
    -- The libs ship with $ORIGIN-relative rpath (ION7_RELEASE=1) so
    -- ion7_bridge resolves libllama from the same _libs/ directory
    -- regardless of where the rock tree is mounted.
    install_command = [[
set -eu

LUA_TARGET="$(LUADIR)"
LIB_TARGET="$(LUADIR)/ion7/core/_libs"
BIN_TARGET="$(BINDIR)"

echo "[ion7-core] install Lua tree → $LUA_TARGET/ion7"
mkdir -p "$LUA_TARGET/ion7"
cp -r src/ion7/. "$LUA_TARGET/ion7/"

echo "[ion7-core] install libraries → $LIB_TARGET"
mkdir -p "$LIB_TARGET"

# Dereference symlinks (`cp -L`) so every entry in the destination is
# a real file. luarocks's post-install copy step does not preserve
# symlinks, and a chain of `lib*.so → lib*.so.0 → lib*.so.0.x.y` would
# otherwise produce errors mid-install. Each plain file becomes a real
# copy of the underlying binary — a few MB of disk for a self-contained
# install is the right tradeoff.
copy_if_exists() {
    if [ -e "$1" ] || [ -L "$1" ]; then
        cp -L "$1" "$LIB_TARGET/"
        echo "  copied $1"
    fi
}
for f in vendor/llama.cpp/build/bin/lib*.so* \
         vendor/llama.cpp/build/bin/lib*.dylib* \
         vendor/llama.cpp/build/bin/*.dll \
         bridge/ion7_bridge.so \
         bridge/ion7_bridge.dylib \
         bridge/ion7_bridge.dll ; do
    copy_if_exists "$f"
done

# At least libllama and ion7_bridge must have landed. Fail loud if not —
# a silent install of an unloadable rock is worse than a failed install.
if ! ls "$LIB_TARGET"/libllama.* >/dev/null 2>&1; then
    echo "[ion7-core] FATAL: no libllama.* in $LIB_TARGET" >&2
    exit 1
fi
if ! ls "$LIB_TARGET"/ion7_bridge.* >/dev/null 2>&1; then
    echo "[ion7-core] FATAL: ion7_bridge.* missing in $LIB_TARGET" >&2
    exit 1
fi

mkdir -p "$BIN_TARGET"
cp bin/ion7-load.lua "$BIN_TARGET/"
chmod 0755 "$BIN_TARGET/ion7-load.lua"

echo "[ion7-core] install complete"
]],
}
