rockspec_format = "3.0"
package = "postgres"
version = "0.7.0-1"
source = {
    url = "git+https://github.com/mah0x211/lua-postgres.git",
    tag = "v0.7.0",
}
description = {
    summary = "PostgreSQL client for lua",
    homepage = "https://github.com/mah0x211/lua-postgres",
    license = "MIT/X11",
    maintainer = "Masatoshi Fukunaga",
}
dependencies = {
    "lua >= 5.1",
    "base64mix >= 1.0.1",
    "denque >= 0.5.1",
    "error >= 0.12.0",
    "hmac >= 0.3.0",
    "lauxhlib >= 0.6.0",
    "metamodule >= 0.5.0",
    "net >= 0.37.0",
    "print >= 0.5.0",
    "postgres-decode >= 0.2.0",
    "string-random >= 0.1.0",
    "time-clock >= 0.4.0",
    "unpack >= 0.1.0",
    "url >= 2.1.0",
    "yyjson >= 0.5.1",
}
build_dependencies = {
    "luarocks-build-hooks",
}
build = {
    type = 'hooks',
    before_build = "$(extra-vars)",
    -- Extra values to append to existing variables
    extra_variables = {
        CFLAGS = "-Wall -Wno-trigraphs -Wmissing-field-initializers -Wreturn-type -Wmissing-braces -Wparentheses -Wno-switch -Wunused-function -Wunused-label -Wunused-parameter -Wunused-variable -Wunused-value -Wuninitialized -Wunknown-pragmas -Wshadow -Wsign-compare",
    },
    conditional_variables = {
        POSTGRES_COVERAGE = {
            CFLAGS = "--coverage",
            LIBFLAG = "--coverage",
        },
    },
    modules = {
        ["postgres.canceler"] = "lib/canceler.lua",
        ["postgres.connection"] = "lib/connection.lua",
        ["postgres.conninfo"] = "lib/conninfo.lua",
        ["postgres.decoder"] = "lib/decoder.lua",
        ["postgres.message"] = "lib/message.lua",
        ["postgres.message.authentication"] = "lib/message/authentication.lua",
        ["postgres.message.backend_key_data"] = "lib/message/backend_key_data.lua",
        ["postgres.message.bind_complete"] = "lib/message/bind_complete.lua",
        ["postgres.message.bind"] = "lib/message/bind.lua",
        ["postgres.message.cancel_request"] = "lib/message/cancel_request.lua",
        ["postgres.message.close_complete"] = "lib/message/close_complete.lua",
        ["postgres.message.close"] = "lib/message/close.lua",
        ["postgres.message.command_complete"] = "lib/message/command_complete.lua",
        ["postgres.message.data_row"] = "lib/message/data_row.lua",
        ["postgres.message.describe"] = "lib/message/describe.lua",
        ["postgres.message.empty_query_response"] = "lib/message/empty_query_response.lua",
        ["postgres.message.error_response"] = "lib/message/error_response.lua",
        ["postgres.message.execute"] = "lib/message/execute.lua",
        ["postgres.message.flush"] = "lib/message/flush.lua",
        ["postgres.message.negotiation_protocol_version"] = "lib/message/negotiation_protocol_version.lua",
        ["postgres.message.no_data"] = "lib/message/no_data.lua",
        ["postgres.message.notification_response"] = "lib/message/notification_response.lua",
        ["postgres.message.parameter_description"] = "lib/message/parameter_description.lua",
        ["postgres.message.parameter_status"] = "lib/message/parameter_status.lua",
        ["postgres.message.parse_complete"] = "lib/message/parse_complete.lua",
        ["postgres.message.parse"] = "lib/message/parse.lua",
        ["postgres.message.password_message"] = "lib/message/password_message.lua",
        ["postgres.message.portal_suspended"] = "lib/message/portal_suspended.lua",
        ["postgres.message.query"] = "lib/message/query.lua",
        ["postgres.message.ready_for_query"] = "lib/message/ready_for_query.lua",
        ["postgres.message.row_description"] = "lib/message/row_description.lua",
        ["postgres.message.sasl_initial_response"] = "lib/message/sasl_initial_response.lua",
        ["postgres.message.sasl_response"] = "lib/message/sasl_response.lua",
        ["postgres.message.startup_message"] = "lib/message/startup_message.lua",
        ["postgres.message.sync"] = "lib/message/sync.lua",
        ["postgres.message.terminate"] = "lib/message/terminate.lua",
        ["postgres.pool"] = "lib/pool.lua",
        ["postgres.pool.connection"] = "lib/pool/connection.lua",
        ["postgres.pool.queue"] = "lib/pool/queue.lua",
        ["postgres.rows"] = "lib/rows.lua",
        ["postgres.scram"] = "lib/scram.lua",
        -- C modules
        ["postgres.htonl"] = "src/htonl.c",
        ["postgres.htons"] = "src/htons.c",
        ["postgres.md5pswd"] = "src/md5pswd.c",
        ["postgres.ntohl"] = "src/ntohl.c",
        ["postgres.ntohs"] = "src/ntohs.c",
        ["postgres.strxor"] = "src/strxor.c",
        ["postgres.unpack"] = "src/unpack.c",
    },
}
