package = "shiki"
version = "1.1-0"
source = {
   url = "git://github.com/ryu-raptor/shiki.git",
   tag = "1.1-0"
}

description = {
   summary = 'Insert "Aki" for plain text typography.',
   detailed = [[
   和文と欧文の間にスペースを挿入することでテキストの見た目を整えます．
   Insert spaces between Japanese and European words for typography.
   ]],
   homepage = "http://github.com/ryu-raptor/shiki", -- We don't have one yet
   license = "MIT/X11" -- or whatever you like
}
dependencies = {
   "lua >= 5.1, <= 5.4",
   "lua_table >= 0.4.3",
   "argparse >= 0.7.1"
}
build = {
    type = "builtin",
    modules = {
        ['shiki.char-category']  = 'shiki/char-category.lua',
        ['shiki.char-determine'] = 'shiki/char-determine.lua',
        ['shiki.inserter']       = 'shiki/inserter.lua',
        ['shiki.pfinder']        = 'shiki/pfinder.lua',
        ['shiki.unicode']        = 'shiki/unicode.lua',
    },
    install = {
        bin = {
            aki = "aki.lua"
        }
    }
}
