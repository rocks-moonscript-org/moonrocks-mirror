-- -*- lua -*-

local project_name = "lua-web-driver"
local package_version = "0.0.6"

package = "web-driver"
version = package_version .. "-0"
description = {
  summary = "LuaWebDriver is WebDriver client library",
  detailed = [[
    LuaWebDriver provides WebDriver client.
    LuaWebDriver supports only geckodriver for now.
  ]],
  license = "MIT",
  homepage = "https://clear-code.gitlab.io/" .. project_name,
  maintainer = "Horimoto Yasuhiro <horimoto@clear-code.com> and Kouhei Sutou <kou@clear-code.com>",
  -- Since 3.0
  -- labels = {"webdriver"},
}
dependencies = {
  "cqueues",
  "http",
  "inspect",
  "lbase64",
  "lua-log",
  "luasocket",
  "luautf8",
  "lunajson",
  "process",
}
source = {
  url = "https://gitlab.com/clear-code/" .. project_name .. "/-/archive/" .. package_version .. "/" .. project_name .. "-" .. package_version .. ".zip",
  dir = project_name .. "-" .. package_version,
}
build = {
  type = "builtin",
  modules = {
    ["web-driver"] = "web-driver.lua",
    ["web-driver.action-builder"] = "web-driver/action-builder.lua",
    ["web-driver.client"] = "web-driver/client.lua",
    ["web-driver.element"] = "web-driver/element.lua",
    ["web-driver.element-client"] = "web-driver/element-client.lua",
    ["web-driver.element-set"] = "web-driver/element-set.lua",
    ["web-driver.geckodriver"] = "web-driver/geckodriver.lua",
    ["web-driver.firefox"] = "web-driver/firefox.lua",
    ["web-driver.interactions"] = "web-driver/interactions.lua",
    ["web-driver.interactions.input-device"] = "web-driver/interactions/input-device.lua",
    ["web-driver.interactions.interaction"] = "web-driver/interactions/interaction.lua",
    ["web-driver.interactions.key-actions"] = "web-driver/interactions/key-actions.lua",
    ["web-driver.interactions.key-input"] = "web-driver/interactions/key-input.lua",
    ["web-driver.interactions.none-input"] = "web-driver/interactions/none-input.lua",
    ["web-driver.interactions.pause"] = "web-driver/interactions/pause.lua",
    ["web-driver.interactions.pointer-actions"] = "web-driver/interactions/pointer-actions.lua",
    ["web-driver.interactions.pointer-cancel"] = "web-driver/interactions/pointer-cancel.lua",
    ["web-driver.interactions.pointer-input"] = "web-driver/interactions/pointer-input.lua",
    ["web-driver.interactions.pointer-move"] = "web-driver/interactions/pointer-move.lua",
    ["web-driver.interactions.pointer-press"] = "web-driver/interactions/pointer-press.lua",
    ["web-driver.interactions.typing-interaction"] = "web-driver/interactions/typing-interaction.lua",
    ["web-driver.ipc-protocol"] = "web-driver/ipc-protocol.lua",
    ["web-driver.job-pusher"] = "web-driver/job-pusher.lua",
    ["web-driver.job-queue"] = "web-driver/job-queue.lua",
    ["web-driver.logger"] = "web-driver/logger.lua",
    ["web-driver.log-formatter"] = "web-driver/log-formatter.lua",
    ["web-driver.log-level"] = "web-driver/log-level.lua",
    ["web-driver.keys"] = "web-driver/keys.lua",
    ["web-driver.thread-pool"] = "web-driver/thread-pool.lua",
    ["web-driver.pp"] = "web-driver/pp.lua",
    ["web-driver.remote-logger"] = "web-driver/remote-logger.lua",
    ["web-driver.searchable"] = "web-driver/searchable.lua",
    ["web-driver.session"] = "web-driver/session.lua",
    ["web-driver.session-client"] = "web-driver/session-client.lua",
    ["web-driver.thread-pool"] = "web-driver/thread-pool.lua",
    ["web-driver.uuid"] = "web-driver/uuid.lua",
  },
  copy_directories = {
    "docs"
  }
}
