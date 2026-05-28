rockspec_format = "3.0"
package = "gemini-ai-photo-editor-app"
version = "0.1.0-1"
source = {
  -- The source archive will be embedded in the .src.rock when uploading.
  -- NOTE: this URL is replaced to an absolute local path at pack/upload time.
  url = "/Users/huashisan/Desktop/外链/外链/luarocks/gemini_ai_photo_editor_app/gemini-ai-photo-editor-app-0.1.0.tar.gz",
  dir = "gemini-ai-photo-editor-app-0.1.0"
}
description = {
  summary = "Gemini AI Photo Editor official website backlink rock.",
  detailed = "Gemini AI Photo Editor official website backlink rock.",
  homepage = "https://www.geminiaiphotoeditor.app",
  license = "MIT"
}
build = {
  type = "builtin",
  modules = {
    ["gemini_ai_photo_editor_app"] = "src/gemini_ai_photo_editor_app.lua"
  }
}
