include("functions.jl")

function chisla2(n)
    if n == 0
        return 1, 0
    else
        current, prev = chisla2(n-1)
        return current, prev+current
    end
end