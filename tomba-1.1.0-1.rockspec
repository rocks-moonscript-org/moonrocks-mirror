rockspec_format = "3.0"
package = "tomba"
version = "1.1.0-1"
source = {
   url = "git://github.com/tomba-io/lua.git",
   tag = "v1.1.0"
}
description = {
   summary = "Official Lua library for Tomba Email Finder",
   detailed = [[
     Tomba: Tomba.io is an Email Finder for B2B sales and email marketing.
     This is the Lua client library for the Tomba Email Finder API (https://tomba.io).
     It allows you to:
        -   Domain Search: Search emails based on a website domain.
        -   Email Finder: Generate the most likely email from a domain, first name and last name.
        -   Author Finder: Instantly discover email addresses of article authors.
        -   Enrichment: Find job title, company, location and social profiles from an email.
        -   Linkedin Finder: Find email addresses from LinkedIn URLs.
        -   Email Verifier: Check the deliverability of a given email address.
        -   Phone Finder: Find phone numbers associated with an email or domain.
        -   Phone Validator: Validate phone numbers and retrieve associated information.
        -   Companies Search: Search for companies using natural language or structured filters.
        -   Similar: Find similar domains to a given domain.
        -   Technology: Discover technologies used by a domain.
        -   Leads Management: Create, read, update, and delete leads.
        -   Bulk Operations: Create and manage bulk processing jobs.
   ]],
   homepage = "https://tomba.io/",
   issues_url = "https://github.com/tomba-io/lua/issues",
   license = "Apache-2.0",
   maintainer = "info@tomba.io"
}
dependencies = {
   "lua >= 5.1",
   "lua-requests",
   "lua-cjson",
}
build = {
   type    = "builtin",
   modules = {
      ["tomba"]                 = "tomba/init.lua",
      ["tomba.client"]          = "tomba/client.lua",
      ["tomba.account"]         = "tomba/account.lua",
      ["tomba.domain"]          = "tomba/domain.lua",
      ["tomba.finder"]          = "tomba/finder.lua",
      ["tomba.verifier"]        = "tomba/verifier.lua",
      ["tomba.phone"]           = "tomba/phone.lua",
      ["tomba.count"]           = "tomba/count.lua",
      ["tomba.status"]          = "tomba/status.lua",
      ["tomba.sources"]         = "tomba/sources.lua",
      ["tomba.format"]          = "tomba/format.lua",
      ["tomba.similar"]         = "tomba/similar.lua",
      ["tomba.technology"]      = "tomba/technology.lua",
      ["tomba.location"]        = "tomba/location.lua",
      ["tomba.enrichment"]      = "tomba/enrichment.lua",
      ["tomba.reveal"]          = "tomba/reveal.lua",
      ["tomba.keys"]            = "tomba/keys.lua",
      ["tomba.usage"]           = "tomba/usage.lua",
      ["tomba.logs"]            = "tomba/logs.lua",
      ["tomba.flag"]            = "tomba/flag.lua",
      ["tomba.leads"]           = "tomba/leads.lua",
      ["tomba.leads_lists"]     = "tomba/leads_lists.lua",
      ["tomba.leads_attributes"] = "tomba/leads_attributes.lua",
      ["tomba.bulk"]            = "tomba/bulk.lua",
   }
}
test = {
   type = "busted",
}
