package = "uuid_test"
version = "1.0-1"
source = {
    url = "git://github.com/youxingx/uuid_test.git",
    branch = "master"
}
description = {
    summary = "A test lua package with uuid",
    homepage = "https://github.com/youxingx/uuid_test",
    maintainer = "1097900172@qq.com",
    license = "MIT"
}
dependencies = {
    "lua >= 5.1, < 5.4"
}
build = {
    type = "builtin",
    modules = {
        uuid_test = "src/uuid.c",
        ["uuid_test"] = "resty/uuid.lua"
    }
}
