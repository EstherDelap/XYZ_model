using DTWA
using JLD2

function main()
    #commit_id = readchomp(`git rev-parse HEAD`)
    dim = (4,4,4)
    N = 1000
    number_repeats = 1000
    Γ_deph = 0
    Γ_decay = 0.025
    Ω = 0
    α = [1.0,1.0,1.0] #these must be FLOATs
    outfile = "results.jld2"
    rv1,rv2 = DTWA.repeated_euler(dim, N,number_repeats,Γ_deph, Γ_decay,Ω, α, "XYZ")
    jldsave(outfile; collective_spin = rv1, average = rv2)
end

main()