__precompile__(false)

module MonoidalCategories

using CAP

import CAP.TensorProductOp

push!(ModulesForEvaluationStack, MonoidalCategories)

include("init.jl")

pop!(ModulesForEvaluationStack)

end # module MonoidalCategories
