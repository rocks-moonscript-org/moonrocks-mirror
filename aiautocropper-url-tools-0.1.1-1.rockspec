package = 'aiautocropper-url-tools'
version = '0.1.1-1'
source = { url = 'git+https://github.com/wangneo276-lgtm/aiautocropper-url-tools.git', tag = 'v0.1.1', dir = 'aiautocropper-url-tools/lua' }
description = { summary = 'Offline URL helpers for AI Auto Cropper', detailed = 'Offline URL builder for AI Auto Cropper scan-splitting workflows. Not an official SDK.', homepage = 'https://aiautocropper.com/', license = 'MIT' }
dependencies = { 'lua >= 5.1' }
build = { type = 'builtin', modules = { aiautocropper_url_tools = 'aiautocropper_url_tools.lua' } }
