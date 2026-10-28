package = 'normalmapai-url-tools'
version = '0.1.0-1'
source = {
  url = 'https://github.com/wangneo276-lgtm/normalmapai-url-tools/archive/refs/tags/v0.1.0.tar.gz',
  dir = 'normalmapai-url-tools-0.1.0/lua'
}
description = {
  summary = "Free normal map generator by NormalMapAI. Convert any photo into a normal map with live 3D preview — plus height, roughness, AO and more. Private in-browser; export for Unity, Unreal, Godot and Blender.",
  detailed = "Free normal map generator by NormalMapAI. Convert any photo into a normal map with live 3D preview — plus height, roughness, AO and more. Private in-browser; export for Unity, Unreal, Godot and Blender.",
  homepage = 'https://normalmapai.com/',
  license = 'MIT'
}
dependencies = { 'lua >= 5.1' }
build = {
  type = 'builtin',
  modules = { normalmapai_url_tools = 'normalmapai_url_tools.lua' }
}
