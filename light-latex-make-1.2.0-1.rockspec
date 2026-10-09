local git_ref = 'v1.2.0'
local modrev = git_ref:gsub('^v', '')
local specrev = '1'

rockspec_format = '3.0'
package = 'light-latex-make'
version = modrev .. '-' .. specrev

local repo_url = 'https://github.com/wtsnjp/llmk'

description = {
  summary = 'A build tool for LaTeX documents',
  detailed =
  [[Light LaTeX Make (llmk) is yet another build tool specific for LaTeX documents. Its aim is to provide a simple way to specify a workflow of processing LaTeX documents and encourage people to always explicitly show the right workflow for each document.

The main features of llmk are all about the above purpose. First, you can describe the workflows either in an external file llmk.toml or in a LaTeX document source in the form of magic comments. Further, multiple magic comment formats can be used. Second, it is fully cross-platform. The only requirement of the program is the texlua command; llmk provides a uniform way to describe the workflows available for nearly all TeX environments. Third, it behaves exactly the same in any environment. At this point, llmk intentionally does not provide any method for user configuration. Therefore one can guarantee that for a LaTeX document with an llmk setup, the process of typesetting the document will be reproduced in any TeX environment with the program.]],
  labels = { 'Compilation' },
  homepage = repo_url,
  license = 'LPPL-1.3c'
}

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'llmk-' .. modrev,
}

dependencies = { 'texrocks' }

build = {
  type = 'none',
  install = {
    bin = {
      llmk = 'llmk.lua'
    }
  }
}

deploy = {
  wrap_bin_scripts = false
}
