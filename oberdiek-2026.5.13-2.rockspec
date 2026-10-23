local git_ref = 'release-2026-05-13'
local modrev = git_ref:gsub("^release%-", ""):gsub('-0', '-'):gsub('%-', '.')
local specrev = '2'

local repo_url = 'https://github.com/ho-tex/oberdiek'

rockspec_format = '3.0'
package = 'oberdiek'
version = modrev .. '-' .. specrev

description = {
  summary = [[A bundle of packages submitted by Heiko Oberdiek]],
  detailed =
  [[The bundle comprises packages to provide:

    bmpsize: get bitmap size and resolution data;
    centernot: a horizontally-centred \not symbol;
    chemarr: extensible chemists’ reaction arrows;
    classlist: record information about document class(es) used;
    colonequals: poor man’s mathematical relation symbols;
    dvipscol: dvips colour stack management;
    engord: define counter-printing operations producing English ordinals;
    eolgrab: collect arguments delimited by end of line;
    flags: setting and clearing flags in bit fields and converting the bit field into a decimal number;
    holtxdoc: extra documentation macros;
    hypbmsec: bookmarks in sectioning commands;
    hypgotoe: experimental package for links to embedded files;
    hyphsubst: substitute hyphenation patterns;
    ifdraft: switch for option draft;
    iflang: provides expandable checks for the current language;
    pdfcolparallel: fixes colour problems in package parallel;
    pdfcolparcolumns: fixes colour problems in package parcolumns;
    pdfcrypt: setting PDF encryption;
    protecteddef: define a command that protected against expansion;
    resizegather: automatically resize overly large equations;
    rotchiffre: performs simple rotation cyphers;
    scrindex: redefines environment "theindex" of package "index", if a class from KOMA-Script is loaded;
    setouterhbox: set \hbox in outer horizontal mode;
    settobox: getting box sizes;
    stackrel: extensions of the \stackrel command;
    stampinclude: selects the files for \include by inspecting the timestamp of the .aux file(s);
    thepdfnumber: canonical numbers for use in PDF files and elsewhere;
    twoopt: commands with two optional arguments;

Each of the packages is represented by two files, a .dtx (documented source) and a PDF file; the .ins file necessary for installation is extracted by running the .dtx file with Plain TeX.]],
  labels = { 'Collection' },
  homepage = repo_url,
  license = 'LPPL-1.3c'
}

build_dependencies = { 'luatex', 'latex-base' }

dependencies = { 'kvoptions', 'latex-amsmath', 'latex-graphics',
-- 'tabularht',
'etexcmds', 'pdftexcmds',
'ltxcmds', 'atveryend',
-- 'uniquecounter',
'kvsetkeys',
'iftex',
-- 'sauerj', 'pdfcol',
'infwarerr',
-- 'parallel',
'pdfescape', 'hyperref',
-- 'index',
-- 'carlisle',
'hypdoc', 'hologo', 'latex-tools', 'fontspec',
-- 'unicode-math',
}

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = package .. '-' .. git_ref,
}

if modrev == 'scm' or modrev == 'dev' then
  source = {
    url = 'https://mirrors.ctan.org/install/macros/latex/contrib/oberdiek.tds.zip',
    dir = '.'
  }
end

build = {
  type = 'l3build',
}
