package = "kong"
version = "0.12.1-0"
supported_platforms = {"linux", "macosx"}
source = {
  url = "git://github.com/Kong/kong",
  tag = "0.12.1"
}
description = {
  summary = "Kong is a scalable and customizable API Management Layer built on top of Nginx.",
  homepage = "http://getkong.org",
  license = "MIT"
}
dependencies = {
  "luasec == 0.6",
  "luasocket == 3.0-rc1",
  "penlight == 1.5.4",
  "lua-resty-http == 0.08",
  "lua-resty-jit-uuid == 0.0.5",
  "multipart == 0.5.1",
  "version == 0.2",
  "kong-lapis == 1.6.0.1",
  "lua-cassandra == 1.2.3",
  "pgmoon == 1.8.0",
  "luatz == 0.3",
  "lua_system_constants == 0.1.2",
  "lua-resty-iputils == 0.3.0",
  "luaossl == 20171028",
  "luasyslog == 1.0.0",
  "lua_pack == 1.0.5",
  "lua-resty-dns-client == 1.0.0",
  "lua-resty-worker-events == 0.3.1",
  "lua-resty-mediador == 0.1.2",
  "lua-resty-healthcheck == 0.3.0",
}
build = {
  type = "builtin",
  modules = {
    ["kong"] = "kong/init.lua",
    ["kong.meta"] = "kong/meta.lua",
    ["kong.constants"] = "kong/constants.lua",
    ["kong.singletons"] = "kong/singletons.lua",
    ["kong.conf_loader"] = "kong/conf_loader.lua",

    ["kong.cluster_events"] = "kong/cluster_events.lua",
    ["kong.cluster_events.strategies.cassandra"] = "kong/cluster_events/strategies/cassandra.lua",
    ["kong.cluster_events.strategies.postgres"] = "kong/cluster_events/strategies/postgres.lua",

    ["kong.cache"] = "kong/cache.lua",

    ["kong.mlcache"] = "kong/mlcache.lua",

    ["kong.templates.nginx"] = "kong/templates/nginx.lua",
    ["kong.templates.nginx_kong"] = "kong/templates/nginx_kong.lua",
    ["kong.templates.kong_defaults"] = "kong/templates/kong_defaults.lua",

    ["kong.vendor.classic"] = "kong/vendor/classic.lua",

    ["kong.cmd"] = "kong/cmd/init.lua",
    ["kong.cmd.roar"] = "kong/cmd/roar.lua",
    ["kong.cmd.stop"] = "kong/cmd/stop.lua",
    ["kong.cmd.quit"] = "kong/cmd/quit.lua",
    ["kong.cmd.start"] = "kong/cmd/start.lua",
    ["kong.cmd.check"] = "kong/cmd/check.lua",
    ["kong.cmd.reload"] = "kong/cmd/reload.lua",
    ["kong.cmd.restart"] = "kong/cmd/restart.lua",
    ["kong.cmd.prepare"] = "kong/cmd/prepare.lua",
    ["kong.cmd.migrations"] = "kong/cmd/migrations.lua",
    ["kong.cmd.health"] = "kong/cmd/health.lua",
    ["kong.cmd.version"] = "kong/cmd/version.lua",
    ["kong.cmd.utils.log"] = "kong/cmd/utils/log.lua",
    ["kong.cmd.utils.kill"] = "kong/cmd/utils/kill.lua",
    ["kong.cmd.utils.nginx_signals"] = "kong/cmd/utils/nginx_signals.lua",
    ["kong.cmd.utils.prefix_handler"] = "kong/cmd/utils/prefix_handler.lua",

    ["kong.api"] = "kong/api/init.lua",
    ["kong.api.api_helpers"] = "kong/api/api_helpers.lua",
    ["kong.api.crud_helpers"] = "kong/api/crud_helpers.lua",
    ["kong.api.routes.kong"] = "kong/api/routes/kong.lua",
    ["kong.api.routes.apis"] = "kong/api/routes/apis.lua",
    ["kong.api.routes.consumers"] = "kong/api/routes/consumers.lua",
    ["kong.api.routes.plugins"] = "kong/api/routes/plugins.lua",
    ["kong.api.routes.cache"] = "kong/api/routes/cache.lua",
    ["kong.api.routes.upstreams"] = "kong/api/routes/upstreams.lua",
    ["kong.api.routes.certificates"] = "kong/api/routes/certificates.lua",
    ["kong.api.routes.snis"] = "kong/api/routes/snis.lua",

    ["kong.tools.ip"] = "kong/tools/ip.lua",
    ["kong.tools.ciphers"] = "kong/tools/ciphers.lua",
    ["kong.tools.dns"] = "kong/tools/dns.lua",
    ["kong.tools.utils"] = "kong/tools/utils.lua",
    ["kong.tools.public"] = "kong/tools/public.lua",
    ["kong.tools.printable"] = "kong/tools/printable.lua",
    ["kong.tools.responses"] = "kong/tools/responses.lua",
    ["kong.tools.timestamp"] = "kong/tools/timestamp.lua",

    ["kong.core.handler"] = "kong/core/handler.lua",
    ["kong.core.certificate"] = "kong/core/certificate.lua",
    ["kong.core.router"] = "kong/core/router.lua",
    ["kong.core.plugins_iterator"] = "kong/core/plugins_iterator.lua",
    ["kong.core.reports"] = "kong/core/reports.lua",
    ["kong.core.error_handlers"] = "kong/core/error_handlers.lua",
    ["kong.core.globalpatches"] = "kong/core/globalpatches.lua",
    ["kong.core.balancer"] = "kong/core/balancer.lua",

    ["kong.dao.errors"] = "kong/dao/errors.lua",
    ["kong.dao.schemas_validation"] = "kong/dao/schemas_validation.lua",
    ["kong.dao.schemas.apis"] = "kong/dao/schemas/apis.lua",
    ["kong.dao.schemas.consumers"] = "kong/dao/schemas/consumers.lua",
    ["kong.dao.schemas.plugins"] = "kong/dao/schemas/plugins.lua",
    ["kong.dao.schemas.upstreams"] = "kong/dao/schemas/upstreams.lua",
    ["kong.dao.schemas.targets"] = "kong/dao/schemas/targets.lua",
    ["kong.dao.schemas.ssl_certificates"] = "kong/dao/schemas/ssl_certificates.lua",
    ["kong.dao.schemas.ssl_servers_names"] = "kong/dao/schemas/ssl_servers_names.lua",
    ["kong.dao.db"] = "kong/dao/db/init.lua",
    ["kong.dao.db.cassandra"] = "kong/dao/db/cassandra.lua",
    ["kong.dao.db.postgres"] = "kong/dao/db/postgres.lua",
    ["kong.dao.dao"] = "kong/dao/dao.lua",
    ["kong.dao.factory"] = "kong/dao/factory.lua",
    ["kong.dao.model_factory"] = "kong/dao/model_factory.lua",
    ["kong.dao.migrations.helpers"] = "kong/dao/migrations/helpers.lua",
    ["kong.dao.migrations.cassandra"] = "kong/dao/migrations/cassandra.lua",
    ["kong.dao.migrations.postgres"] = "kong/dao/migrations/postgres.lua",

    ["kong.plugins.base_plugin"] = "kong/plugins/base_plugin.lua",

    ["kong.plugins.basic-auth.migrations.cassandra"] = "kong/plugins/basic-auth/migrations/cassandra.lua",
    ["kong.plugins.basic-auth.migrations.postgres"] = "kong/plugins/basic-auth/migrations/postgres.lua",
    ["kong.plugins.basic-auth.crypto"] = "kong/plugins/basic-auth/crypto.lua",
    ["kong.plugins.basic-auth.handler"] = "kong/plugins/basic-auth/handler.lua",
    ["kong.plugins.basic-auth.access"] = "kong/plugins/basic-auth/access.lua",
    ["kong.plugins.basic-auth.schema"] = "kong/plugins/basic-auth/schema.lua",
    ["kong.plugins.basic-auth.api"] = "kong/plugins/basic-auth/api.lua",
    ["kong.plugins.basic-auth.daos"] = "kong/plugins/basic-auth/daos.lua",

    ["kong.plugins.key-auth.migrations.cassandra"] = "kong/plugins/key-auth/migrations/cassandra.lua",
    ["kong.plugins.key-auth.migrations.postgres"] = "kong/plugins/key-auth/migrations/postgres.lua",
    ["kong.plugins.key-auth.handler"] = "kong/plugins/key-auth/handler.lua",
    ["kong.plugins.key-auth.schema"] = "kong/plugins/key-auth/schema.lua",
    ["kong.plugins.key-auth.api"] = "kong/plugins/key-auth/api.lua",
    ["kong.plugins.key-auth.daos"] = "kong/plugins/key-auth/daos.lua",

    ["kong.plugins.oauth2.migrations.cassandra"] = "kong/plugins/oauth2/migrations/cassandra.lua",
    ["kong.plugins.oauth2.migrations.postgres"] = "kong/plugins/oauth2/migrations/postgres.lua",
    ["kong.plugins.oauth2.handler"] = "kong/plugins/oauth2/handler.lua",
    ["kong.plugins.oauth2.access"] = "kong/plugins/oauth2/access.lua",
    ["kong.plugins.oauth2.schema"] = "kong/plugins/oauth2/schema.lua",
    ["kong.plugins.oauth2.daos"] = "kong/plugins/oauth2/daos.lua",
    ["kong.plugins.oauth2.api"] = "kong/plugins/oauth2/api.lua",

    ["kong.plugins.log-serializers.basic"] = "kong/plugins/log-serializers/basic.lua",
    ["kong.plugins.log-serializers.runscope"] = "kong/plugins/log-serializers/runscope.lua",

    ["kong.plugins.tcp-log.handler"] = "kong/plugins/tcp-log/handler.lua",
    ["kong.plugins.tcp-log.schema"] = "kong/plugins/tcp-log/schema.lua",
    ["kong.plugins.tcp-log.migrations.cassandra"] = "kong/plugins/tcp-log/migrations/cassandra.lua",
    ["kong.plugins.tcp-log.migrations.postgres"] = "kong/plugins/tcp-log/migrations/postgres.lua",

    ["kong.plugins.udp-log.handler"] = "kong/plugins/udp-log/handler.lua",
    ["kong.plugins.udp-log.schema"] = "kong/plugins/udp-log/schema.lua",

    ["kong.plugins.http-log.handler"] = "kong/plugins/http-log/handler.lua",
    ["kong.plugins.http-log.schema"] = "kong/plugins/http-log/schema.lua",

    ["kong.plugins.file-log.handler"] = "kong/plugins/file-log/handler.lua",
    ["kong.plugins.file-log.schema"] = "kong/plugins/file-log/schema.lua",

    ["kong.plugins.runscope.handler"] = "kong/plugins/runscope/handler.lua",
    ["kong.plugins.runscope.schema"] = "kong/plugins/runscope/schema.lua",
    ["kong.plugins.runscope.log"] = "kong/plugins/runscope/log.lua",

    ["kong.plugins.galileo.migrations.cassandra"] = "kong/plugins/galileo/migrations/cassandra.lua",
    ["kong.plugins.galileo.migrations.postgres"] = "kong/plugins/galileo/migrations/postgres.lua",
    ["kong.plugins.galileo.handler"] = "kong/plugins/galileo/handler.lua",
    ["kong.plugins.galileo.schema"] = "kong/plugins/galileo/schema.lua",
    ["kong.plugins.galileo.buffer"] = "kong/plugins/galileo/buffer.lua",
    ["kong.plugins.galileo.alf"] = "kong/plugins/galileo/alf.lua",

    ["kong.plugins.rate-limiting.migrations.cassandra"] = "kong/plugins/rate-limiting/migrations/cassandra.lua",
    ["kong.plugins.rate-limiting.migrations.postgres"] = "kong/plugins/rate-limiting/migrations/postgres.lua",
    ["kong.plugins.rate-limiting.handler"] = "kong/plugins/rate-limiting/handler.lua",
    ["kong.plugins.rate-limiting.schema"] = "kong/plugins/rate-limiting/schema.lua",
    ["kong.plugins.rate-limiting.daos"] = "kong/plugins/rate-limiting/daos.lua",
    ["kong.plugins.rate-limiting.policies"] = "kong/plugins/rate-limiting/policies/init.lua",
    ["kong.plugins.rate-limiting.policies.cluster"] = "kong/plugins/rate-limiting/policies/cluster.lua",

    ["kong.plugins.response-ratelimiting.migrations.cassandra"] = "kong/plugins/response-ratelimiting/migrations/cassandra.lua",
    ["kong.plugins.response-ratelimiting.migrations.postgres"] = "kong/plugins/response-ratelimiting/migrations/postgres.lua",
    ["kong.plugins.response-ratelimiting.handler"] = "kong/plugins/response-ratelimiting/handler.lua",
    ["kong.plugins.response-ratelimiting.access"] = "kong/plugins/response-ratelimiting/access.lua",
    ["kong.plugins.response-ratelimiting.header_filter"] = "kong/plugins/response-ratelimiting/header_filter.lua",
    ["kong.plugins.response-ratelimiting.log"] = "kong/plugins/response-ratelimiting/log.lua",
    ["kong.plugins.response-ratelimiting.schema"] = "kong/plugins/response-ratelimiting/schema.lua",
    ["kong.plugins.response-ratelimiting.daos"] = "kong/plugins/response-ratelimiting/daos.lua",
    ["kong.plugins.response-ratelimiting.policies"] = "kong/plugins/response-ratelimiting/policies/init.lua",
    ["kong.plugins.response-ratelimiting.policies.cluster"] = "kong/plugins/response-ratelimiting/policies/cluster.lua",

    ["kong.plugins.request-size-limiting.handler"] = "kong/plugins/request-size-limiting/handler.lua",
    ["kong.plugins.request-size-limiting.schema"] = "kong/plugins/request-size-limiting/schema.lua",

    ["kong.plugins.request-transformer.migrations.cassandra"] = "kong/plugins/request-transformer/migrations/cassandra.lua",
    ["kong.plugins.request-transformer.migrations.postgres"] = "kong/plugins/request-transformer/migrations/postgres.lua",
    ["kong.plugins.request-transformer.handler"] = "kong/plugins/request-transformer/handler.lua",
    ["kong.plugins.request-transformer.access"] = "kong/plugins/request-transformer/access.lua",
    ["kong.plugins.request-transformer.schema"] = "kong/plugins/request-transformer/schema.lua",

    ["kong.plugins.response-transformer.migrations.cassandra"] = "kong/plugins/response-transformer/migrations/cassandra.lua",
    ["kong.plugins.response-transformer.migrations.postgres"] = "kong/plugins/response-transformer/migrations/postgres.lua",
    ["kong.plugins.response-transformer.handler"] = "kong/plugins/response-transformer/handler.lua",
    ["kong.plugins.response-transformer.body_transformer"] = "kong/plugins/response-transformer/body_transformer.lua",
    ["kong.plugins.response-transformer.header_transformer"] = "kong/plugins/response-transformer/header_transformer.lua",
    ["kong.plugins.response-transformer.schema"] = "kong/plugins/response-transformer/schema.lua",

    ["kong.plugins.cors.handler"] = "kong/plugins/cors/handler.lua",
    ["kong.plugins.cors.schema"] = "kong/plugins/cors/schema.lua",
    ["kong.plugins.cors.migrations.cassandra"] = "kong/plugins/cors/migrations/cassandra.lua",
    ["kong.plugins.cors.migrations.postgres"] = "kong/plugins/cors/migrations/postgres.lua",

    ["kong.plugins.ip-restriction.handler"] = "kong/plugins/ip-restriction/handler.lua",
    ["kong.plugins.ip-restriction.schema"] = "kong/plugins/ip-restriction/schema.lua",
    ["kong.plugins.ip-restriction.migrations.cassandra"] = "kong/plugins/ip-restriction/migrations/cassandra.lua",
    ["kong.plugins.ip-restriction.migrations.postgres"] = "kong/plugins/ip-restriction/migrations/postgres.lua",

    ["kong.plugins.acl.migrations.cassandra"] = "kong/plugins/acl/migrations/cassandra.lua",
    ["kong.plugins.acl.migrations.postgres"] = "kong/plugins/acl/migrations/postgres.lua",
    ["kong.plugins.acl.handler"] = "kong/plugins/acl/handler.lua",
    ["kong.plugins.acl.schema"] = "kong/plugins/acl/schema.lua",
    ["kong.plugins.acl.api"] = "kong/plugins/acl/api.lua",
    ["kong.plugins.acl.daos"] = "kong/plugins/acl/daos.lua",

    ["kong.plugins.correlation-id.handler"] = "kong/plugins/correlation-id/handler.lua",
    ["kong.plugins.correlation-id.schema"] = "kong/plugins/correlation-id/schema.lua",

    ["kong.plugins.jwt.migrations.cassandra"] = "kong/plugins/jwt/migrations/cassandra.lua",
    ["kong.plugins.jwt.migrations.postgres"] = "kong/plugins/jwt/migrations/postgres.lua",
    ["kong.plugins.jwt.handler"] = "kong/plugins/jwt/handler.lua",
    ["kong.plugins.jwt.schema"] = "kong/plugins/jwt/schema.lua",
    ["kong.plugins.jwt.api"] = "kong/plugins/jwt/api.lua",
    ["kong.plugins.jwt.daos"] = "kong/plugins/jwt/daos.lua",
    ["kong.plugins.jwt.jwt_parser"] = "kong/plugins/jwt/jwt_parser.lua",
    ["kong.plugins.jwt.asn_sequence"] = "kong/plugins/jwt/asn_sequence.lua",

    ["kong.plugins.hmac-auth.migrations.cassandra"] = "kong/plugins/hmac-auth/migrations/cassandra.lua",
    ["kong.plugins.hmac-auth.migrations.postgres"] = "kong/plugins/hmac-auth/migrations/postgres.lua",
    ["kong.plugins.hmac-auth.handler"] = "kong/plugins/hmac-auth/handler.lua",
    ["kong.plugins.hmac-auth.access"] = "kong/plugins/hmac-auth/access.lua",
    ["kong.plugins.hmac-auth.schema"] = "kong/plugins/hmac-auth/schema.lua",
    ["kong.plugins.hmac-auth.api"] = "kong/plugins/hmac-auth/api.lua",
    ["kong.plugins.hmac-auth.daos"] = "kong/plugins/hmac-auth/daos.lua",

    ["kong.plugins.ldap-auth.migrations.cassandra"] = "kong/plugins/ldap-auth/migrations/cassandra.lua",
    ["kong.plugins.ldap-auth.migrations.postgres"] = "kong/plugins/ldap-auth/migrations/postgres.lua",
    ["kong.plugins.ldap-auth.handler"] = "kong/plugins/ldap-auth/handler.lua",
    ["kong.plugins.ldap-auth.access"] = "kong/plugins/ldap-auth/access.lua",
    ["kong.plugins.ldap-auth.schema"] = "kong/plugins/ldap-auth/schema.lua",
    ["kong.plugins.ldap-auth.ldap"] = "kong/plugins/ldap-auth/ldap.lua",
    ["kong.plugins.ldap-auth.asn1"] = "kong/plugins/ldap-auth/asn1.lua",

    ["kong.plugins.syslog.handler"] = "kong/plugins/syslog/handler.lua",
    ["kong.plugins.syslog.schema"] = "kong/plugins/syslog/schema.lua",

    ["kong.plugins.loggly.handler"] = "kong/plugins/loggly/handler.lua",
    ["kong.plugins.loggly.schema"] = "kong/plugins/loggly/schema.lua",

    ["kong.plugins.datadog.migrations.cassandra"] = "kong/plugins/datadog/migrations/cassandra.lua",
    ["kong.plugins.datadog.migrations.postgres"] = "kong/plugins/datadog/migrations/postgres.lua",
    ["kong.plugins.datadog.handler"] = "kong/plugins/datadog/handler.lua",
    ["kong.plugins.datadog.schema"] = "kong/plugins/datadog/schema.lua",
    ["kong.plugins.datadog.statsd_logger"] = "kong/plugins/datadog/statsd_logger.lua",

    ["kong.plugins.statsd.migrations.cassandra"] = "kong/plugins/statsd/migrations/cassandra.lua",
    ["kong.plugins.statsd.migrations.postgres"] = "kong/plugins/statsd/migrations/postgres.lua",
    ["kong.plugins.statsd.handler"] = "kong/plugins/statsd/handler.lua",
    ["kong.plugins.statsd.schema"] = "kong/plugins/statsd/schema.lua",
    ["kong.plugins.statsd.statsd_logger"] = "kong/plugins/statsd/statsd_logger.lua",

    ["kong.plugins.bot-detection.handler"] = "kong/plugins/bot-detection/handler.lua",
    ["kong.plugins.bot-detection.schema"] = "kong/plugins/bot-detection/schema.lua",
    ["kong.plugins.bot-detection.rules"] = "kong/plugins/bot-detection/rules.lua",

    ["kong.plugins.aws-lambda.handler"] = "kong/plugins/aws-lambda/handler.lua",
    ["kong.plugins.aws-lambda.schema"] = "kong/plugins/aws-lambda/schema.lua",
    ["kong.plugins.aws-lambda.v4"] = "kong/plugins/aws-lambda/v4.lua",

    ["kong.plugins.request-termination.handler"] = "kong/plugins/request-termination/handler.lua",
    ["kong.plugins.request-termination.schema"] = "kong/plugins/request-termination/schema.lua",
  }
}
