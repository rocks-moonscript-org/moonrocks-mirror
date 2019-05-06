local v = "0.1.0"

package = "bgcrypto-sha"
version = v .. "-1"

source = {
  url = "https://github.com/moteus/lua-bgcrypto-sha/archive/v" .. v .. ".zip",
  dir = "lua-bgcrypto-sha-" .. v,
}

description = {
  summary  = "SHA1/SHA2 digest library",
  homepage = "https://github.com/moteus/bgcrypto-sha",
  detailed = [[Binding to Dr Brian Gladman's implementation of SHA/HMAC algorithm.]];
  license = "BSD",
}

dependencies = {
  "lua >= 5.1, < 5.4",
  -- "bit32",
}

local function make_module()
  local result = {}
  local names = {'sha1','sha224','sha256','sha384','sha512',
    'sha512_128','sha512_192','sha512_224','sha512_256',
  }
  for i = 1, #names do
    local name = names[i]
    result['bgcrypto.' .. name] = {
      sources = {
        'src/l52util.c', 'src/sha/sha1.c', 'src/sha/sha2.c',
        'src/sha/hmac.c', 'src/l' .. name ..'.c'
      },
      incdirs = {'src/sha'},
      defines = {'RETURN_VALUES', 'VOID_RETURN=void', 'INT_RETURN=int'}
    }
  end
  return result
end

build = {
  copy_directories = {"test"},

  type = "builtin",

  modules = make_module();
}

