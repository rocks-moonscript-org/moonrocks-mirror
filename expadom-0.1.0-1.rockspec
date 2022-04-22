local package_name = "expadom"
local package_version = "0.1.0"
local rockspec_revision = "1"
local github_account_name = "lunarmodules"
local github_repo_name = package_name
local git_checkout = package_version == "scm" and "main" or package_version


package = package_name
version = package_version .. "-" .. rockspec_revision

source = {
  url = "git+https://github.com/"..github_account_name.."/"..github_repo_name..".git",
  branch = git_checkout
}

description = {
  summary = "Expat based XML DOM level 2 handling for Lua",
  homepage = "https://"..github_account_name..".github.io/"..github_repo_name,
  license = "MIT/X11",
  maintainer = "thijs@thijsschreijer.nl",
  detailed = [[
    Expadom is a library on top of LuaExpat for handling XML documents. It
    implements the XML DOM level 2 model.
  ]]
}

dependencies = {
  "luaexpat >= 1.4.0",
  "compat53", -- for the UTF-8 module
}

build = {
  type = "builtin",
  modules = {
    ["expadom.Attr"] = "src/expadom/Attr.lua",
    ["expadom.CDATASection"] = "src/expadom/CDATASection.lua",
    ["expadom.CharacterData"] = "src/expadom/CharacterData.lua",
    ["expadom.class"] = "src/expadom/class.lua",
    ["expadom.Comment"] = "src/expadom/Comment.lua",
    ["expadom.constants"] = "src/expadom/constants.lua",
    ["expadom.Document"] = "src/expadom/Document.lua",
    ["expadom.DocumentFragment"] = "src/expadom/DocumentFragment.lua",
    ["expadom.DocumentType"] = "src/expadom/DocumentType.lua",
    ["expadom.DOMImplementation"] = "src/expadom/DOMImplementation.lua",
    ["expadom.Element"] = "src/expadom/Element.lua",
    ["expadom.init"] = "src/expadom/init.lua",
    ["expadom.NamedNodeMap"] = "src/expadom/NamedNodeMap.lua",
    ["expadom.Node"] = "src/expadom/Node.lua",
    ["expadom.NodeList"] = "src/expadom/NodeList.lua",
    ["expadom.ProcessingInstruction"] = "src/expadom/ProcessingInstruction.lua",
    ["expadom.Text"] = "src/expadom/Text.lua",
    ["expadom.xmlutils"] = "src/expadom/xmlutils.lua",
  },
  copy_directories = { "docs" }
}
