package = "talua"
version = "1.0.1-1"
source = {
   url = "git+https://github.com/azoyan/talua.git",
   branch = "main"
}
description = {
    summary = "This is a Technical Analysis Lua library",
    detailed = "",
    homepage = "https://github.com/azoyan/talua",
    license = "MIT <http://opensource.org/licenses/MIT>",
    maintainer = "ivan.azoyan@gmail.com",
}

dependencies = {
    "lua >= 5.1"
}

build = {
    type = "builtin",
    modules = {        
        ["AverageTrueRange"] = "src/AverageTrueRange.lua",
        ["BollingerBands"] = "src/BollingerBands.lua",
        ["Candlestick"] = "src/Candlestick.lua",
        ["ChandelierExit"] = "src/ChandelierExit.lua",
        ["ExponentialMovingAverage"] = "src/ExponentialMovingAverage.lua",
        ["FastStochastic"] = "src/FastStochastic.lua",
        ["KeltnerChannel"] = "src/KeltnerChannel.lua",
        ["Maximum"] = "src/Maximum.lua",
        ["Minimum"] = "src/Minimum.lua",
        ["MoneyFlowIndex"] = "src/MoneyFlowIndex.lua",
        ["MovingAverageConvergenceDivergence"] = "src/MovingAverageConvergenceDivergence.lua",
        ["OnBalanceVolume"] = "src/OnBalanceVolume.lua",
        ["PercentagePriceOscillator"] = "src/PercentagePriceOscillator.lua",
        ["RateOfChange"] = "src/RateOfChange.lua",
        ["RelativeStrengthIndex"] = "src/RelativeStrengthIndex.lua",
        ["SimpleMovingAverage"] = "src/SimpleMovingAverage.lua",
        ["SlowStochastic"] = "src/SlowStochastic.lua",
        ["StandardDeviation"] = "src/StandardDeviation.lua",
        ["TrueRange"] = "src/TrueRange.lua"
    }
}