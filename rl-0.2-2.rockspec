package = "rl"
version = "0.2-2"

source = {
   url = "git://github.com/vpong/torch-rl.git",
   tag = "v0.2"
}

description = {
   summary = "A package for basic reinforcement learning algorithms.",
   detailed = [[
        A package for basic reinforcement learning algorithms
   ]],
   homepage = "https://github.com/vpong/torch-rl"
}

dependencies = {
   "lua ~> 5.1",
   "torch >= 7.0"
}

build = {
   type = "builtin",
   modules = {
        ["rl.AllActionsEqualPolicy"] = "AllActionsEqualPolicy.lua",
        ["rl.ConstExplorer"] = "ConstExplorer.lua",
        ["rl.ControlFactory"] = "ControlFactory.lua",
        ["rl.Control"] = "Control.lua",
        ["rl.DecayTableExplorer"] = "DecayTableExplorer.lua",
        ["rl.EpisodeBuilder"] = "EpisodeBuilder.lua",
        ["rl.Evaluator"] = "Evaluator.lua",
        ["rl.Explorer"] = "Explorer.lua",
        ["rl.GreedyPolicy"] = "GreedyPolicy.lua",
        ["rl.LinSarsaFactory"] = "LinSarsaFactory.lua",
        ["rl.LinSarsa"] = "LinSarsa.lua",
        ["rl.MdpConfig"] = "MdpConfig.lua",
        ["rl.Mdp"] = "Mdp.lua",
        ["rl.MdpSampler"] = "MdpSampler.lua",
        ["rl.MonteCarloControl"] = "MonteCarloControl.lua",
        ["rl.NNSarsaFactory"] = "NNSarsaFactory.lua",
        ["rl.NNSarsa"] = "NNSarsa.lua",
        ["rl.Policy"] = "Policy.lua",
        ["rl.QApprox"] = "QApprox.lua",
        ["rl.QFunc"] = "QFunc.lua",
        ["rl.QHash"] = "QHash.lua",
        ["rl.QLin"] = "QLin.lua",
        ["rl.QNN"] = "QNN.lua",
        ["rl.QVAnalyzer"] = "QVAnalyzer.lua",
        ["rl.rl"] = "rl.lua",
        ["rl.rl_constants"] = "rl_constants.lua",
        ["rl.SAFeatureExtractor"] = "SAFeatureExtractor.lua",
        ["rl.SarsaAnalyzer"] = "SarsaAnalyzer.lua",
        ["rl.SarsaFactory"] = "SarsaFactory.lua",
        ["rl.Sarsa"] = "Sarsa.lua",
        ["rl.TableSarsaFactory"] = "TableSarsaFactory.lua",
        ["rl.TableSarsa"] = "TableSarsa.lua",
        ["rl.TestMdp"] = "TestMdp.lua",
        ["rl.TestMdpQVAnalyzer"] = "TestMdpQVAnalyzer.lua",
        ["rl.TestPolicy"] = "TestPolicy.lua",
        ["rl.TestSAFE"] = "TestSAFE.lua",
        ["rl.ValueIteration"] = "ValueIteration.lua",
        ["rl.VFunc"] = "VFunc.lua",
        ["rl.VHash"] = "VHash.lua",
        ["rl.util.io_util"] = "util/io_util.lua",
        ["rl.util.mdputil"] = "util/mdputil.lua",
        ["rl.util.tensorutil"] = "util/tensorutil.lua",
        ["rl.util.util_for_unittests"] = "util/util_for_unittests.lua",
        ["rl.util.util"] = "util/util.lua"
   },
   copy_directories = { "doc" , "test"}
}
