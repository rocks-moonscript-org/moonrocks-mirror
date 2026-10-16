package = 'trystencil-url-tools'
version = '0.1.1-1'
source = { url = 'git+https://github.com/wangneo276-lgtm/trystencil-url-tools.git', tag = 'v0.1.1', dir = 'trystencil-url-tools/lua' }
description = { summary = 'Offline URL helpers for TryStencil', detailed = 'Offline URL builder for TryStencil tattoo generator, try-on, stencil, and idea pages. Not an official SDK.', homepage = 'https://trystencil.org/', license = 'MIT' }
dependencies = { 'lua >= 5.1' }
build = { type = 'builtin', modules = { trystencil_url_tools = 'trystencil_url_tools.lua' } }
