package = "kong-oidc-maryucha"
version = "1.4.0-2"
source = {
    url = "git://github.com/maryucha/kong-oidc",
    dir = "kong-oidc"
}
description = {
    summary = "Plugin Kong para autenticação OpenID Connect como Relying Party (RP)",
    detailed = [[
        O `kong-oidc-maryucha` é um plugin robusto para o Kong que implementa a funcionalidade de OpenID Connect Relying Party (RP), permitindo a autenticação de usuários contra um Provedor OpenID Connect (OP) com suporte a Descoberta OpenID Connect.

        Principais recursos incluem:
        - Autenticação de usuários usando o Authorization Code Flow.
        - Suporte a Client Credentials Flow para autenticação entre serviços (Service-to-Service).
        - Validação de tokens de acesso e injeção automática no cabeçalho de requisições.
        - Configurações flexíveis para diferentes cenários de autenticação, como fluxo de credenciais do cliente e validação de tokens JWT.
        - Manipulação de sessões e suporte a múltiplos tipos de autenticação baseados em OIDC.

        Este plugin é ideal para implementar autenticação em sistemas que utilizam Kong como API Gateway, integrando de forma transparente com Keycloak ou outros provedores OpenID Connect. 

        As responsabilidades do código foram refatoradas seguindo princípios de SOLID, garantindo uma arquitetura modular, de fácil manutenção e altamente extensível.
    ]],
    homepage = "https://github.com/maryucha/kong-oidc",
    license = "Apache 2.0"
}
dependencies = {
      "lua-resty-openidc ~> 1.7.5-1"
}
build = {
    type = "builtin",
    modules = {
        ["kong.plugins.oidc.filter"] = "kong/plugins/oidc/filter.lua",
        ["kong.plugins.oidc.handler"] = "kong/plugins/oidc/handler.lua",
        ["kong.plugins.oidc.schema"] = "kong/plugins/oidc/schema.lua",
        ["kong.plugins.oidc.session"] = "kong/plugins/oidc/session.lua",
        ["kong.plugins.oidc.utils"] = "kong/plugins/oidc/utils.lua"
    }
}
