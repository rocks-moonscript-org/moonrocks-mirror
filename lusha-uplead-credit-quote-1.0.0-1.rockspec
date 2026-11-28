package = "lusha-uplead-credit-quote"
version = "1.0.0-1"
source = {
   url = "git+https://github.com/jaizendra-netizen/lusha-uplead-credit-quote.git",
   tag = "v1.0.0"
}
description = {
   summary = "Lua CLI: credits, plan cost and API calls to enrich a contact list on Lusha or UpLead, from the published rules on the OneGTMLab comparison page.",
   detailed = "Give it a number of contacts and how many phones you want. It prints the credits each vendor charges (Lusha 1 per email and 5 per phone, UpLead 1 per contact), the plan cost with UpLead's extra credits, API gating, and the calls and time at each API's published limits. Figures come from the OneGTMLab Lusha vs UpLead page; where it is silent the tool prints not stated.",
   homepage = "https://www.onegtmlab.dev/tool-directory/compare/lusha-vs-uplead",
   license = "MIT"
}
dependencies = {
   "lua >= 5.1"
}
build = {
   type = "builtin",
   modules = {
      ["lusha_uplead_credit_quote"] = "src/lusha_uplead_credit_quote.lua"
   },
   install = {
      bin = { ["lusha-uplead-credit-quote"] = "bin/lusha-uplead-credit-quote" }
   }
}
