package = 'diver-research'
version = '0.1.0-1'
source = {
    url = 'git+https://github.com/qompassai/luarocks.git',
    dir = 'luarocks/research',
}
description = {
    summary = 'Diver research workflow: research.* journal registry, ORCID, OpenAlex, Web of Science, Zenodo, deadlines, watchlist, templates, Zotero.',
    homepage = 'https://github.com/qompassai/luarocks',
    license = 'Apache-2.0',
}
dependencies = {
    'lua >= 5.1',
    'diver-utils >= 0.1.0',
}
build = {
    type = 'builtin',
    modules = {
        ['research'] = 'lua/research/init.lua',
        ['research.ama'] = 'lua/research/ama.lua',
        ['research.bib'] = 'lua/research/bib.lua',
        ['research.citation'] = 'lua/research/citation.lua',
        ['research.clipboard'] = 'lua/research/clipboard.lua',
        ['research.deadlines'] = 'lua/research/deadlines.lua',
        ['research.diff'] = 'lua/research/diff.lua',
        ['research.discover'] = 'lua/research/discover.lua',
        ['research.equations'] = 'lua/research/equations.lua',
        ['research.journal'] = 'lua/research/journal.lua',
        ['research.latex'] = 'lua/research/latex.lua',
        ['research.license'] = 'lua/research/license.lua',
        ['research.manuscript'] = 'lua/research/manuscript.lua',
        ['research.markdown'] = 'lua/research/markdown.lua',
        ['research.openalex'] = 'lua/research/openalex.lua',
        ['research.orcid'] = 'lua/research/orcid.lua',
        ['research.pdf'] = 'lua/research/pdf.lua',
        ['research.research'] = 'lua/research/research.lua',
        ['research.review'] = 'lua/research/review.lua',
        ['research.submission'] = 'lua/research/submission.lua',
        ['research.templates'] = 'lua/research/templates.lua',
        ['research.watchlist'] = 'lua/research/watchlist.lua',
        ['research.wos'] = 'lua/research/wos.lua',
        ['research.zenodo'] = 'lua/research/zenodo.lua',
        ['research.zotero'] = 'lua/research/zotero.lua'
    },
    copy_directories = { 'lua/research/dictionary' }
}
