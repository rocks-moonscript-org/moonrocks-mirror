package = "aitextwatermarkremover-tools"
version = "0.1.0-1"
source = {
  url = "git+https://github.com/bbwdadfg/aitextwatermarkremover-tools.git",
  tag = "luarocks-v0.1.0"
}
description = {
  summary = "Scan and remove invisible Unicode characters from text.",
  detailed = "Local utilities to scan and remove invisible Unicode characters and tidy Markdown paste residue. Independent third-party helper inspired by aitextwatermarkremover.com. Not an official SDK. Runs offline.",
  homepage = "https://aitextwatermarkremover.com/",
  license = "MIT"
}
dependencies = {
  "lua >= 5.1"
}
build = {
  type = "builtin",
  modules = {
    atwr_tools = "lua/atwr_tools.lua"
  }
}
