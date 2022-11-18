__precompile__(false)

module MonoidalCategories

using CAP

push!(ModulesForEvaluationStack, MonoidalCategories)

include("init.jl")

pop!(ModulesForEvaluationStack)

end # module MonoidalCategories
