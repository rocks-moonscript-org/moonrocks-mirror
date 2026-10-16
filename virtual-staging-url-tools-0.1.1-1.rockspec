package = 'virtual-staging-url-tools'
version = '0.1.1-1'
source = { url = 'git+https://github.com/wangneo276-lgtm/virtual-staging-url-tools.git', tag = 'v0.1.1', dir = 'virtual-staging-url-tools/lua' }
description = { summary = 'Offline URL helpers for Virtual Staging', detailed = 'Offline URL builder for Virtual Staging tool pages and rental-listing guides. Not an official SDK.', homepage = 'https://virtual-staging.app/', license = 'MIT' }
dependencies = { 'lua >= 5.1' }
build = { type = 'builtin', modules = { virtual_staging_url_tools = 'virtual_staging_url_tools.lua' } }
