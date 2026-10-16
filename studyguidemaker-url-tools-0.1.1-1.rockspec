package = 'studyguidemaker-url-tools'
version = '0.1.1-1'
source = { url = 'git+https://github.com/wangneo276-lgtm/studyguidemaker-url-tools.git', tag = 'v0.1.1', dir = 'studyguidemaker-url-tools/lua' }
description = { summary = 'Offline URL helpers for Study Guide Maker', detailed = 'Offline URL builder for Study Guide Maker source, audience, flashcard, and quiz pages. Not an official SDK.', homepage = 'https://studyguidemaker.net/', license = 'MIT' }
dependencies = { 'lua >= 5.1' }
build = { type = 'builtin', modules = { studyguidemaker_url_tools = 'studyguidemaker_url_tools.lua' } }
