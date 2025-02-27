package = "neuro-game-sdk"         
version = "1.0.0-1"          
source = {
    url = "https://github.com/Gunoshozo/lua-neuro-sama-game-api/releases/download/release/neuro_game_sdk.zip", 
    tag = "v1.0.0"           
}
description = {
    summary = "Lua implementation of neuro game sdk",
    detailed = [[

    ]],
    homepage = "https://github.com/Gunoshozo/lua-neuro-sama-game-api",
    license = "MIT"          
}
dependencies = {
    "lua = 5.1",
    "lua-websockets >= v2.2-1",
    "copas"

}
build = {
    type = "builtin",
    modules = {
        ["neuro_game_sdk.config"] = "config.lua", 
        ["neuro_game_sdk.game_hooks"] = "game_hooks.lua",
        ["neuro_game_sdk.string_consts"] = "string_consts.lua",

        ["neuro_game_sdk.utils.table_utils"] = "utils/table_utils.lua",
        ["neuro_game_sdk.utils.json_utils"] = "utils/json_utils.lua",
        ["neuro_game_sdk.third_party.json"] = "third-party/json.lua",

        ["neuro_game_sdk.actions.action_window"] = "actions/action_window.lua",
        ["neuro_game_sdk.actions.neuro_action_handler"] = "actions/neuro_action_handler.lua",
        ["neuro_game_sdk.actions.neuro_action"] = "actions/neuro_action.lua",
        ["neuro_game_sdk.actions.ws_action"] = "actions/ws_action.lua",

        ["neuro_game_sdk.websocket.websocket_connection"] = "websocket/websocket_connection.lua",
        ["neuro_game_sdk.websocket.execution_result"] = "websocket/execution_result.lua",
        ["neuro_game_sdk.websocket.command_handler"] = "websocket/command_handler.lua",
        ["neuro_game_sdk.websocket.message_queue"] = "websocket/message_queue.lua",

        ["neuro_game_sdk.messages.api.incoming_data"] = "messages/api/incoming_data.lua",
        ["neuro_game_sdk.messages.api.incoming_message"] = "messages/api/incoming_message.lua",
        ["neuro_game_sdk.messages.api.outgoing_message"] = "messages/api/outgoing_message.lua",
        ["neuro_game_sdk.messages.api.ws_message"] = "messages/api/ws_message.lua",

        ["neuro_game_sdk.messages.incoming.action"] = "messages/incoming/action.lua",
        ["neuro_game_sdk.messages.incoming.actions_reregister_all"] = "messages/incoming/actions_reregister_all.lua",

        ["neuro_game_sdk.messages.outgoing.action_force"] = "messages/outgoing/action_force.lua",
        ["neuro_game_sdk.messages.outgoing.action_result"] = "messages/outgoing/action_result.lua",
        ["neuro_game_sdk.messages.outgoing.action_unregistrer"] = "messages/outgoing/action_unregistrer.lua",
        ["neuro_game_sdk.messages.outgoing.actions_register"] = "messages/outgoing/actions_register.lua",
        ["neuro_game_sdk.messages.outgoing.context"] = "messages/outgoing/context.lua",
        ["neuro_game_sdk.messages.outgoing.startup"] = "messages/outgoing/startup.lua",
    }
}
