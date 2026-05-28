package = "discount3"
version = "1.1-1"
rockspec_format = '3.0'

description = {
    summary = "Lua bindings for the Discount Markdown library V3",
    detailed = [[
      Supports all tags. 
    ]],
    homepage = "https://gitlabor.ru/Datenlabor/discount3",
    labels = { 'markdown', 'discount'} ,
    license = "ISC"
}

source = {
    url = "git+https://gitlabor.ru/Datenlabor/discount3/",
    tag = "1.1-1"
}

dependencies = {
    "lua = 5.1"
}

external_dependencies = {
    DISCOUNT = {
        header = "mkdio.h",
        library = "markdown"
    }
}

build = {
    type = "builtin",
    modules = {
        discount3 = {
            sources = {"discount3.c"},
            libraries = {"markdown"}
        }
    }
}
