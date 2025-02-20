module MLJTestIntegration

const N_MODELS_FOR_REPEATABILITY_TEST = 20

using MLJ
using Pkg
using .Threads
using Test
using NearestNeighborModels
import MLJTestInterface
const MTI = MLJTestInterface
import MLJTestInterface.attempt

include("attemptors.jl")
include("test.jl")
include("special_cases.jl")
include("dummy_model.jl")

function __init__()
    global RESOURCES = (CPU1(), CPUThreads())
end

using .DummyModel

end # module
