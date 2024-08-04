package = "cmark"
version = "0.31.1-1"
source = {
    url = "git://github.com/jgm/cmark-lua",
    tag = "0.31.1"
}
description = {
    summary = [[Lua wrapper for libcmark, CommonMark Markdown parsing
      and rendering library]],
    detailed = [[cmark exposes the entire API of libcmark, as
      documented in the `cmark(3)` man page, and adds a
      more lua-esque interface for walking the node tree.]],
    homepage = "https://github.com/jgm/cmark-lua",
    license = "BSD2",
    maintainer = "John MacFarlane <jgm@berkeley.edu>",
}
dependencies = {
}
build = {
    type = "builtin",
    modules = {
        cmark = {
             sources = { "cmark_wrap.c",
                         "ext/blocks.c",
                         "ext/houdini_html_u.c",
                         "ext/references.c",
                         "ext/buffer.c",
                         "ext/html.c",
                         "ext/render.c",
                         "ext/cmark.c",
                         "ext/inlines.c",
                         "ext/scanners.c",
                         "ext/cmark_ctype.c",
                         "ext/iterator.c",
                         "ext/utf8.c",
                         "ext/commonmark.c",
                         "ext/latex.c",
                         "ext/xml.c",
                         "ext/houdini_href_e.c",
                         "ext/man.c",
                         "ext/houdini_html_e.c",
                         "ext/node.c",
                       },
             incdirs = { ".", "ext" }
        },
        ["cmark.builder"] = "cmark/builder.lua"
    },
}
