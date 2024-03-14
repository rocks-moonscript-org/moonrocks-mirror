rockspec_format = "3.0"
package = "luanlp"
version = "0.1.1-1"
source = {
   url = "https://codeberg.org/leso-kn/LuaNLP/archive/v0.1.1.tar.gz",
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
   "utf8"
}
build = {
   type = "builtin",
   modules = {
      ["luanlp.keyword.rake"] = "luanlp/keyword/rake.lua",
      ["luanlp.lemmatizer.wordnet"] = "luanlp/lemmatizer/wordnet.lua",
      ["luanlp.path"] = "luanlp/path.lua",
      ["luanlp.pos.conll2000_test"] = "luanlp/pos/conll2000_test.lua",
      ["luanlp.pos.conll2003_test"] = "luanlp/pos/conll2003_test.lua",
      ["luanlp.pos.perceptron"] = "luanlp/pos/perceptron.lua",
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
      "luanlp/pos/conll2000",
      "luanlp/sent/sentiment_labelled_sentences",
      "luanlp/sent/vader_lexicons",
      "luanlp/stemmer/data",
      "luanlp/stopword/stoplists",
      "luanlp/tokenizer/data"
   }
}
test_dependencies = {
   "inspect ~> 3"
}
