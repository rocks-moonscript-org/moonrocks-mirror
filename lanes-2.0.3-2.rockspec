--
-- Lanes rockspec
--
-- Ref:  
--      <http://luarocks.org/en/Rockspec_format>
--
-- History:
--  PLM 13-Nov-2009: 2.0.3-2. Building on windows made easier. Also usurping Asko in maintainance. And updating homepage.
--  HHM 19-Oct-2009: 2.0.3-1 update.
--  AKa 1-Sep-2008: 2.0-2 (NOT sent to list): fixed VC++ not finding DLL issue
--  AKa 20-Aug-2008: 2.0-1 sent to luarocks-developers
--

package = "Lanes"

version = "2.0.3-2"

source= {
    url= "http://luaforge.net/frs/download.php/3927/lanes-2.0.3.tgz",
    md5= "d07ab814a15bb33898c2f607accefca6"
}

description = {
	summary= "Multithreading support for Lua",
	detailed= [[
        Lua Lanes is a portable, message passing multithreading library 
        providing the possibility to run multiple Lua states in parallel. 
    ]],
	license= "MIT/X11",
	homepage="http://kotisivu.dnainternet.net/askok/bin/lanes/",
	maintainer="Pierre LeMoine <yarr.luben@gmail.com>"	
}

-- Q: What is the difference of "windows" and "win32"? Seems there is none;
--    so should we list either one or both?
--
supported_platforms= { "windows",
                       "macosx", 
                       "linux", 
                       "freebsd"
}

dependencies= {
    "lua >= 5.1, < 5.2",
}

--
-- Non-Win32: build using the Makefile
-- Win32: build using 'make-vc.cmd' and "manual" copy of products
--
-- TBD: How is MSYS treated?  We'd like (really) it to use the Makefile.
--      It should be a target like "cygwin", not defining "windows". 
--      "windows" should actually guarantee Visual C++ as the compiler.
--
-- Q: Does "win32" guarantee we have Visual C++ 2005/2008 command line tools?
--
-- Note: Cannot use the simple "module" build type, because we need to precompile
--       'src/keeper.lua' -> keeper.lch and bake it into lanes.c.
--
build = {

    -- Win32 (Visual C++) uses 'make-vc.cmd' for building
    --
    platforms= {
        windows= {
            type= "command",
            build_command=
               --setup-vc.cmd should be modified to use ProgramFiles & ProgramFiles(x86)
               --instead of hardcoded paths!
               "(set LUA51 || set LUA51=$(LUA_BINDIR))&" .. --set LUA51 unless already present
               "(set VCINSTALLDIR || call setup-vc.cmd) &" .. --dito for VCINSTALLDIR
               "make-vc.cmd", --now build
            install= {
                lua = { "src/lanes.lua" },
                lib = { "lua51-lanes.dll" }
            }
        }
    },

    -- Other platforms use the Makefile
    --
    -- LuaRocks defines CFLAGS, LIBFLAG and LUA_INCDIR for 'make rock',
    --          defines LIBDIR, LUADIR for 'make install'
    --
    -- Ref: <http://www.luarocks.org/en/Paths_and_external_dependencies>
    --
    type = "make",
    
    build_target = "rock",
    build_variables= {
        CFLAGS= "$(CFLAGS) -I$(LUA_INCDIR)",
        LIBFLAG= "$(LIBFLAG)",
    },

    install_target = "install",
    install_variables= {
        LUA_LIBDIR= "$(LIBDIR)",
        LUA_SHAREDIR= "$(LUADIR)",
    }
}

