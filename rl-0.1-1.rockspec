package = "rl"
version = "0.1-1"

source = {
   url = "git://github.com/vpong/torch-rl.git",
   tag = "v0.1"
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
   type = "none",
   install = {
        lua = {
            "AllActionsEqualPolicy.lua",
            "constants.lua",
            "ConstExplorer.lua",
            "ControlFactory.lua",
            "Control.lua",
            "DecayTableExplorer.lua",
            "EpisodeBuilder.lua",
            "Evaluator.lua",
            "Explorer.lua",
            "GreedyPolicy.lua",
            "io_util.lua",
            "LinSarsaFactory.lua",
            "LinSarsa.lua",
            "MdpConfig.lua",
            "Mdp.lua",
            "MdpSampler.lua",
            "mdputil.lua",
            "MonteCarloControl.lua",
            "NNSarsaFactory.lua",
            "NNSarsa.lua",
            "Policy.lua",
            "QApprox.lua",
            "QFunc.lua",
            "QHash.lua",
            "QLin.lua",
            "QNN.lua",
            "QVAnalyzer.lua",
            "rl.lua",
            "SAFeatureExtractor.lua",
            "SarsaAnalyzer.lua",
            "SarsaFactory.lua",
            "Sarsa.lua",
            "TableSarsaFactory.lua",
            "TableSarsa.lua",
            "tensorutil.lua",
            "TestMdp.lua",
            "TestMdpQVAnalyzer.lua",
            "TestPolicy.lua",
            "TestSAFE.lua",
            "util_for_unittests.lua",
            "util.lua",
            "ValueIteration.lua",
            "VFunc.lua",
            "VHash.lua"
        }
   },
   copy_directories = { "doc" , "test"}
}
