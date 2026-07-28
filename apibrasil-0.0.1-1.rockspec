rockspec_format = "3.0"
package = "apibrasil"
version = "0.0.1-1"

source = {
  url = "git+https://github.com/APIBrasil/apigratis-sdk-lua.git",
  tag = "v0.0.1",
}

description = {
  summary = "SDK oficial Lua da plataforma APIBrasil",
  detailed = [[
SDK oficial Lua da plataforma APIBrasil: WhatsApp, SMS, consultas de CPF/CNPJ,
veiculos, CEP, correios, pagamentos PIX/boleto e mais.

Compativel com Lua 5.1+, LuaJIT e OpenResty. O transporte HTTP e plugavel e
autodetectado (resty.http, lua-http, luasocket/luasec ou curl) e o codec JSON
acompanha a SDK, sem dependencia obrigatoria.
]],
  homepage = "https://apibrasil.com.br",
  issues_url = "https://github.com/APIBrasil/apigratis-sdk-lua/issues",
  maintainer = "APIBrasil <contato@apibrasil.com.br>",
  labels = { "api", "whatsapp", "sms", "cpf", "cnpj", "pix", "brasil", "sdk" },
  license = "MIT",
}

dependencies = {
  "lua >= 5.1",
  -- Transporte HTTP padrao fora do OpenResty. A SDK tambem funciona com
  -- lua-http, com resty.http ou com o curl da maquina.
  "luasocket >= 3.0rc1",
  "luasec >= 1.0",
}

test_dependencies = {
  "busted >= 2.0",
}

test = {
  type = "busted",
}

build = {
  type = "builtin",
  modules = {
    ["apibrasil"] = "src/apibrasil/init.lua",
    ["apibrasil.client"] = "src/apibrasil/client.lua",
    ["apibrasil.consulta"] = "src/apibrasil/consulta.lua",
    ["apibrasil.legacy"] = "src/apibrasil/legacy.lua",
    ["apibrasil.version"] = "src/apibrasil/version.lua",

    ["apibrasil.core.config"] = "src/apibrasil/core/config.lua",
    ["apibrasil.core.credit_response"] = "src/apibrasil/core/credit_response.lua",
    ["apibrasil.core.device_response"] = "src/apibrasil/core/device_response.lua",
    ["apibrasil.core.env"] = "src/apibrasil/core/env.lua",
    ["apibrasil.core.error"] = "src/apibrasil/core/error.lua",
    ["apibrasil.core.hooks"] = "src/apibrasil/core/hooks.lua",
    ["apibrasil.core.http"] = "src/apibrasil/core/http.lua",
    ["apibrasil.core.json"] = "src/apibrasil/core/json.lua",
    ["apibrasil.core.retry"] = "src/apibrasil/core/retry.lua",
    ["apibrasil.core.service"] = "src/apibrasil/core/service.lua",
    ["apibrasil.core.transport"] = "src/apibrasil/core/transport.lua",
    ["apibrasil.core.transport.curl"] = "src/apibrasil/core/transport/curl.lua",
    ["apibrasil.core.transport.lua_http"] = "src/apibrasil/core/transport/lua_http.lua",
    ["apibrasil.core.transport.luasocket"] = "src/apibrasil/core/transport/luasocket.lua",
    ["apibrasil.core.transport.resty"] = "src/apibrasil/core/transport/resty.lua",
    ["apibrasil.core.utils"] = "src/apibrasil/core/utils.lua",

    ["apibrasil.data.bulk"] = "src/apibrasil/data/bulk.lua",
    ["apibrasil.data.cep"] = "src/apibrasil/data/cep.lua",
    ["apibrasil.data.chip_virtual"] = "src/apibrasil/data/chip_virtual.lua",
    ["apibrasil.data.consulta"] = "src/apibrasil/data/consulta.lua",
    ["apibrasil.data.correios"] = "src/apibrasil/data/correios.lua",
    ["apibrasil.data.dados"] = "src/apibrasil/data/dados.lua",
    ["apibrasil.data.database_ip"] = "src/apibrasil/data/database_ip.lua",
    ["apibrasil.data.ddd"] = "src/apibrasil/data/ddd.lua",
    ["apibrasil.data.fipe"] = "src/apibrasil/data/fipe.lua",
    ["apibrasil.data.geolocation"] = "src/apibrasil/data/geolocation.lua",
    ["apibrasil.data.geomatrix"] = "src/apibrasil/data/geomatrix.lua",
    ["apibrasil.data.holidays"] = "src/apibrasil/data/holidays.lua",
    ["apibrasil.data.loterias"] = "src/apibrasil/data/loterias.lua",
    ["apibrasil.data.recognize"] = "src/apibrasil/data/recognize.lua",
    ["apibrasil.data.translate"] = "src/apibrasil/data/translate.lua",
    ["apibrasil.data.ura"] = "src/apibrasil/data/ura.lua",
    ["apibrasil.data.vehicles"] = "src/apibrasil/data/vehicles.lua",
    ["apibrasil.data.weather"] = "src/apibrasil/data/weather.lua",

    ["apibrasil.generated.catalog"] = "src/apibrasil/generated/catalog.lua",

    ["apibrasil.messaging.evolution"] = "src/apibrasil/messaging/evolution.lua",
    ["apibrasil.messaging.sms"] = "src/apibrasil/messaging/sms.lua",
    ["apibrasil.messaging.whatsapp"] = "src/apibrasil/messaging/whatsapp.lua",
    ["apibrasil.messaging.whatsmeow"] = "src/apibrasil/messaging/whatsmeow.lua",

    ["apibrasil.platform.account"] = "src/apibrasil/platform/account.lua",
    ["apibrasil.platform.auth"] = "src/apibrasil/platform/auth.lua",
    ["apibrasil.platform.bearer_rate_limit"] = "src/apibrasil/platform/bearer_rate_limit.lua",
    ["apibrasil.platform.catalog"] = "src/apibrasil/platform/catalog.lua",
    ["apibrasil.platform.devices"] = "src/apibrasil/platform/devices.lua",
    ["apibrasil.platform.ip_whitelist"] = "src/apibrasil/platform/ip_whitelist.lua",
    ["apibrasil.platform.payments"] = "src/apibrasil/platform/payments.lua",
    ["apibrasil.platform.reports"] = "src/apibrasil/platform/reports.lua",
  },
}
