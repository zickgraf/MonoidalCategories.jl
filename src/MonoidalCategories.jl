__precompile__(false)

module MonoidalCategories

@nospecialize

using CAP

import CAP.TensorProductOp

push!(ModulesForEvaluationStack, MonoidalCategories)

include("init.jl")

end # module MonoidalCategories
