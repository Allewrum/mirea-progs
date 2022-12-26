include("functions.jl")

function chisla(n)
    if n in (1,2)
        return 1
    end
    
    chisla(n-1) + chisla(n-2)
end