r = Robot()
for i in 0:3 
    steps = 0
    while isborder(r,HorizonSide(i)) == false
        move!(r,HorizonSide(i))
        steps = steps+1
        putmarker!(r)
    end
    while steps > 0
        move!(r,HorizonSide((i+2)%4))
        steps = steps-1
    end
end
putmarker!(r)