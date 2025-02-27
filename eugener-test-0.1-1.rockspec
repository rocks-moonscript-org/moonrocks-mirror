
package = "eugener-test"
version = "0.1-1"
source = {
    url = "git://github.com/eugenebmx/eugener-test-lua.git",

}
description = {
    summary = "Test project. Don't download",
    detailed = "Test project. Don't download",
    homepage = "https://github.com/pypi/warehouse",
    license = "MIT"
}
dependencies = {
}
build = {
    type = "builtin",
    modules = {
        eugenertest = "eugener-test.lua"
    }
}