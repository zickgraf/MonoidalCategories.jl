__precompile__(false)

module MonoidalCategories

@nospecialize

using CAP

import CAP.TensorProductOp

push!(ModulesForEvaluationStack, MonoidalCategories)

include("init.jl")

pop!(ModulesForEvaluationStack)

end # module MonoidalCategories
