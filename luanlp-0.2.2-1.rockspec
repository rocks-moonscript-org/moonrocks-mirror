rockspec_format = "3.0"
package = "luanlp"
version = "0.2.2-1"
source = {
   url = "https://codeberg.org/leso-kn/LuaNLP/archive/v0.2.2.zip",
   dir = "luanlp"
}
description = {
   summary = "Natural Language Processing Library for Lua",
   detailed = "The goal of this library is to provide native support for [Natural Language Processing tasks](https://en.wikipedia.org/wiki/Natural_language_processing#Common_NLP_tasks) in Lua.",
   homepage = "https://codeberg.org/leso-kn/LuaNLP",
   license = "MIT"
}
dependencies = {
   "json-lua ~> 0.1",
   "lrexlib-pcre ~> 2",
   "lua-cmsgpack ~> 0.4",
   "lua-lzma ~> 0.1",
   "utf8"
}
build_dependencies = {
   "luarocks-build-builtin-with-command ~> 0.1"
}
build = {
   type = "builtin-with-command",
   modules = {
      ["luanlp.keyword.rake"] = "luanlp/keyword/rake.lua",
      ["luanlp.lemmatizer.wordnet"] = "luanlp/lemmatizer/wordnet.lua",
      ["luanlp.lua51-compat"] = "luanlp/lua51-compat.lua",
      ["luanlp.path"] = "luanlp/path.lua",
      ["luanlp.pos.conll2000_test"] = "luanlp/pos/conll2000_test.lua",
      ["luanlp.pos.conll2003_test"] = "luanlp/pos/conll2003_test.lua",
      ["luanlp.pos.perceptron"] = "luanlp/pos/perceptron.lua",
      ["luanlp.pos.tree"] = "luanlp/pos/tree.lua",
      ["luanlp.sent.test_vader"] = "luanlp/sent/test_vader.lua",
      ["luanlp.sent.vader"] = "luanlp/sent/vader.lua",
      ["luanlp.stemmer.porter"] = "luanlp/stemmer/porter.lua",
      ["luanlp.stemmer.test"] = "luanlp/stemmer/test.lua",
      ["luanlp.stopword.stopwords"] = "luanlp/stopword/stopwords.lua",
      ["luanlp.summarize.textteaser"] = "luanlp/summarize/textteaser.lua",
      ["luanlp.tokenizer.nb"] = "luanlp/tokenizer/nb.lua",
      ["luanlp.tokenizer.supervised"] = "luanlp/tokenizer/supervised.lua",
      ["luanlp.tokenizer.tokenization"] = "luanlp/tokenizer/tokenization.lua",
      ["luanlp.tokenizer.treebank"] = "luanlp/tokenizer/treebank.lua"
   },
   copy_directories = {
      "luanlp/lemmatizer/wordnet",
      "luanlp/pos/model",
      "luanlp/sent/sentiment_labelled_sentences",
      "luanlp/sent/vader_lexicons",
      "luanlp/stemmer/data",
      "luanlp/stopword/stoplists",
      "luanlp/tokenizer/data"
   },
   build_command = "$(LUA) -lluarocks.loader luanlp/pos/perceptron_train.lua"
}
test_dependencies = {
   "inspect ~> 3"
}
