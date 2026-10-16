package = 'samplab-url-tools'
version = '0.1.1-1'
source = { url = 'git+https://github.com/wangneo276-lgtm/samplab-url-tools.git', tag = 'v0.1.1', dir = 'samplab-url-tools/lua' }
description = { summary = 'Offline URL helpers for SampLab Pro', detailed = 'Offline URL builder for SampLab Pro, a browser audio and MIDI tool suite. Not an official SDK.', homepage = 'https://samplab.pro/', license = 'MIT' }
dependencies = { 'lua >= 5.1' }
build = { type = 'builtin', modules = { samplab_url_tools = 'samplab_url_tools.lua' } }
