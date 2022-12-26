include("functions.jl")

function chess!(robot, side)
    if !isborder(r, side)
        move!(r, side)
        putmarker!(r)
        chess2!(r, side)
    end
end

function chessi!(robot, side)
    if !isborder(robot, side)
        move!(r, side)
        chess!(robot, side)
    end
end