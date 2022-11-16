local package_name = "lua-resty-busted2"
local package_version = "0.2.0"
local rockspec_revision = "0"
local github_account_name = "fesily"
local github_repo_name = package_name

package = package_name
version = package_version .. "-" .. rockspec_revision
source = {
    url = "git+https://github.com/" .. github_account_name .. "/" .. github_repo_name .. ".git"
}

if package_version == "scm" then source.branch = "master" else source.tag = "v" .. package_version end

description = {
    summary = 'better openresty busted test unit framework',
    detailed = [[
    ## ngx.log
    The ngx.log output can now be inspected.
    ```lua
    it('DEBUG', function()
        ngx.log(ngx.DEBUG, '1')
        assert.error_log('1', ngx.DEBUG)
    end)
    ```
    `Notice`:
    1. `CRIT`,`ALERT`,`EMERG` will throw error
    2. `STDERR` will just output to std err
    ### When to clear the log
    start a new `describe`,`context`,`file`,`suite` test.
    If you want to clean up in every test.
    ```lua
    context('every test clear log', function()
        busted_ngx.each_test_clean_log()
        ngx.log(ngx.ERR, '1')
        it('1', function()
            assert.no.error_log()
        end)
        it('2', function()
            assert.no.error_log('1')
            ngx.log(ngx.ERR, '2')
            assert.error_log('2')
        end)
    end)
    ```
  ]] ,
    homepage = "https://github.com/fesily/lua-resty-busted2/",
    license = 'Apache-2.0 <http://opensource.org/licenses/Apache-2.0>'
}

dependencies = {
    'busted'
}

build = {
   type = "builtin",
   modules = {
      ["resty.busted2.busted2.d"] = "lib/resty/busted2/busted2.d.lua",
      ["resty.busted2.execute"] = "lib/resty/busted2/execute.lua",
      ["resty.busted2.luarocks_path"] = "lib/resty/busted2/luarocks_path.lua",
      ["resty.busted2.init"] = "lib/resty/busted2/init.lua",
      ["resty.busted2.languages.en"] = "lib/resty/busted2/languages/en.lua",
      ["resty.busted2.languages.zh"] = "lib/resty/busted2/languages/zh.lua",
      ["resty.busted2.ngx.log"] = "lib/resty/busted2/ngx/log.lua"
   },
   install = {
      bin = {
         "bin/rebusted2"
      }
   }
}
