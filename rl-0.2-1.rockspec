package = "rl"
version = "0.2-1"

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
        AllActionsEqualPolicy = "AllActionsEqualPolicy.lua",
        constants = "constants.lua",
        ConstExplorer = "ConstExplorer.lua",
        ControlFactory = "ControlFactory.lua",
        Control = "Control.lua",
        DecayTableExplorer = "DecayTableExplorer.lua",
        EpisodeBuilder = "EpisodeBuilder.lua",
        Evaluator = "Evaluator.lua",
        Explorer = "Explorer.lua",
        GreedyPolicy = "GreedyPolicy.lua",
        LinSarsaFactory = "LinSarsaFactory.lua",
        LinSarsa = "LinSarsa.lua",
        MdpConfig = "MdpConfig.lua",
        Mdp = "Mdp.lua",
        MdpSampler = "MdpSampler.lua",
        MonteCarloControl = "MonteCarloControl.lua",
        NNSarsaFactory = "NNSarsaFactory.lua",
        NNSarsa = "NNSarsa.lua",
        Policy = "Policy.lua",
        QApprox = "QApprox.lua",
        QFunc = "QFunc.lua",
        QHash = "QHash.lua",
        QLin = "QLin.lua",
        QNN = "QNN.lua",
        QVAnalyzer = "QVAnalyzer.lua",
        rl = "rl.lua",
        SAFeatureExtractor = "SAFeatureExtractor.lua",
        SarsaAnalyzer = "SarsaAnalyzer.lua",
        SarsaFactory = "SarsaFactory.lua",
        Sarsa = "Sarsa.lua",
        TableSarsaFactory = "TableSarsaFactory.lua",
        TableSarsa = "TableSarsa.lua",
        TestMdp = "TestMdp.lua",
        TestMdpQVAnalyzer = "TestMdpQVAnalyzer.lua",
        TestPolicy = "TestPolicy.lua",
        TestSAFE = "TestSAFE.lua",
        ValueIteration = "ValueIteration.lua",
        VFunc = "VFunc.lua",
        VHash = "VHash.lua",
        ["util.io_util"] = "util/io_util.lua",
        ["util.mdputil"] = "util/mdputil.lua",
        ["util.tensorutil"] = "util/tensorutil.lua",
        ["util.util_for_unittests"] = "util/util_for_unittests.lua",
        ["util.util"] = "util/util.lua"
   },
   copy_directories = { "doc" , "test"}
}
