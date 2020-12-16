r = Robot()
for i in 0:3
    while (isborder(r,HorizonSide(i)) == false) && (isborder(r,HorizonSide((i+1)%4)) == false)
        move!(r,HorizonSide(i))
        move!(r,HorizonSide((i+1)%4))
        putmarker!(r)
    end
    while ismarker(r)==true
        move!(r,HorizonSide((i+2)%4))
        move!(r,HorizonSide((i+3)%4))
    end
end
putmarker!(r)