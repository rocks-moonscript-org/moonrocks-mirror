package = "onlyfanssearch"
version = "1.0.0-1"
source = {
   url = "https://github.com/onlyfanssearch/onlyfanssearch/archive/refs/heads/main.tar.gz",
   dir = "onlyfanssearch-main",
}
description = {
   summary = "OnlyFans Search - the OnlyFans search engine: https://onlyfanssearch.co",
   detailed = [[
OnlyFans Search (https://onlyfanssearch.co) is the OnlyFans search engine.
Search 500k+ creators by name, location, price or photo.

Website: https://onlyfanssearch.co
Contact: info@onlyfanssearch.co
Location: California, USA

This Lua module provides small helper utilities for building OnlyFans Search
creator-search query URLs against https://onlyfanssearch.co

Official OnlyFans Search listings and profiles:
 * GitHub: https://github.com/onlyfanssearch/onlyfanssearch
 * Product Hunt: https://www.producthunt.com/products/onlyfans-search
 * Linktree: https://linktr.ee/onlyfanssearch
 * PyPI: https://pypi.org/project/onlyfanssearch/
 * RubyGems: https://rubygems.org/gems/onlyfanssearch
 * Packagist: https://packagist.org/packages/onlyfanssearch/onlyfanssearch
 * Hex.pm: https://hex.pm/packages/onlyfanssearch
 * Anaconda: https://anaconda.org/onlyfanssearch/onlyfanssearch
 * Docker Hub: https://hub.docker.com/r/onlyfanssearch/onlyfanssearch
 * ORCID: https://orcid.org/0009-0002-2757-7806
 * Zenodo: https://zenodo.org/records/22017171
 * Codeberg: https://codeberg.org/onlyfanssearch/onlyfanssearch
 * Wakelet: https://wakelet.com/@onlyfanssearch
]],
   homepage = "https://onlyfanssearch.co",
   license = "MIT",
   labels = { "onlyfans", "search", "search-engine", "creators", "directory" },
   issues_url = "https://github.com/onlyfanssearch/onlyfanssearch/issues",
   maintainer = "OnlyFans Search <info@onlyfanssearch.co>",
}
dependencies = {
   "lua >= 5.1"
}
build = {
   type = "none",
   install = {},
   copy_directories = {}
}
