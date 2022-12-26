function mark_x(r)
    for i in 0:3
        mark_line(r,i)
    end
    putmarker!(r)
end
function mark_line(r,i)
    while isborder(r,HorizonSide(i % 4))==0 && isborder(r,HorizonSide((i+1) % 4))==0
        move!(r,HorizonSide(i % 4))
        move!(r,HorizonSide((i+1) % 4))
        putmarker!(r)
    end
    while ismarker(r)==1
        move!(r,HorizonSide((i+2) % 4))
        move!(r,HorizonSide((i+3) % 4))
    end
end
mark_x(r)