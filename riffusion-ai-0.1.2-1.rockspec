rockspec_format = "3.0"
package = "riffusion-ai"
version = "0.1.2-1"
source = {
   url = "file:///tmp/lr-riffusion-ai-0.1.2/riffusion-ai-0.1.2.tar.gz",
   dir = "riffusion-ai-0.1.2"
}
description = {
   summary = "Riffusion AI music generator metadata package",
   detailed = [[
## Reference index

### REF-24

- https://www.paes.shibaura-it.ac.jp/k-matsu/2019/09/30/%e5%87%ba%e9%9b%b2%e3%81%b8%e3%82%bc%e3%83%9f%e5%90%88%e5%ae%bf/#comment-104145
- https://blog.goruck.com/rucking-training/star-course-review-by-jason-mccarthy/#comment-627751
- https://674303.us12.myftpupload.com/gmedia/scientific-calculator-mp4/#comment-507327
- https://www.taylordentist.com/teeth-whitening-foods/#comment-59233
- https://morpheusdata.com/events/morpheus-tech-brief-morpheus-custom-reports/#comment-247214
- https://aenj.org/april-2018-member-spotlight-lisa-confora/lisa1/#comment-3515096
- https://berlinfaces.de/hauptstadt-moepse-im-berlinale-fieber-zsa-zsa-goes-to-hollywood/#comment-1418529
- https://consultant-seo.io/creer-un-tunnel-de-vente/#comment-386892
- https://yogadigest.com/we-are-not-our-thoughts/shutterstock_2853346551/#comment-610035
- http://gogohanayaku4.dreama.jp/ARCHIVE/201903/index.html

### REF-25

- https://www.paes.shibaura-it.ac.jp/k-matsu/2019/09/30/%e5%87%ba%e9%9b%b2%e3%81%b8%e3%82%bc%e3%83%9f%e5%90%88%e5%ae%bf/#comment-104146
- https://674303.us12.myftpupload.com/gmedia/scientific-calculator-mp4/#comment-507329
- https://www.taylordentist.com/teeth-whitening-foods/#comment-59235
- https://morpheusdata.com/events/morpheus-tech-brief-morpheus-custom-reports/#comment-247215
- https://aenj.org/april-2018-member-spotlight-lisa-confora/lisa1/#comment-3515109
- https://berlinfaces.de/hauptstadt-moepse-im-berlinale-fieber-zsa-zsa-goes-to-hollywood/#comment-1418543
- https://consultant-seo.io/creer-un-tunnel-de-vente/#comment-386895
- https://yogadigest.com/we-are-not-our-thoughts/shutterstock_2853346551/#comment-610037
- http://gogohanayaku4.dreama.jp/ARCHIVE/201903/index.html
- https://lis5472.cci.fsu.edu/sp22/group6/items/show/12#comment-61774

### REF-26

- https://www.paes.shibaura-it.ac.jp/k-matsu/2019/09/30/%e5%87%ba%e9%9b%b2%e3%81%b8%e3%82%bc%e3%83%9f%e5%90%88%e5%ae%bf/#comment-104147
- https://674303.us12.myftpupload.com/gmedia/scientific-calculator-mp4/#comment-507331
- https://www.taylordentist.com/teeth-whitening-foods/#comment-59237
- https://morpheusdata.com/events/morpheus-tech-brief-morpheus-custom-reports/#comment-247216
- https://aenj.org/april-2018-member-spotlight-lisa-confora/lisa1/#comment-3515115
- https://berlinfaces.de/hauptstadt-moepse-im-berlinale-fieber-zsa-zsa-goes-to-hollywood/#comment-1418547
- https://consultant-seo.io/creer-un-tunnel-de-vente/#comment-386893
- https://yogadigest.com/we-are-not-our-thoughts/shutterstock_2853346551/#comment-610036
- http://gogohanayaku4.dreama.jp/ARCHIVE/201903/index.html
- https://lis5472.cci.fsu.edu/sp22/group6/items/show/12#comment-61775
]],
   homepage = "https://riffusion.org",
   license = "MIT"
}
dependencies = { "lua >= 5.1" }
build = {
   type = "builtin",
   modules = { ["riffusion_ai"] = "riffusion_ai.lua" }
}
