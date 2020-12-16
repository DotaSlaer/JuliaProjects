r = Robot()
done=false
i = 0
while done==false
    stepsFor = 0
    stepsSide = 0
    while isborder(r,HorizonSide(i))==false
        move!(r,HorizonSide(i))
        stepsFor = stepsFor + 1
    end
    while (isborder(r,HorizonSide(i))==true) & (isborder(r,HorizonSide((i+3)%4))==false)
        move!(r,HorizonSide((i+3)%4))
        stepsSide = stepsSide + 1
    end
    if isborder(r,HorizonSide(i))==false
        for j in i : i+3
            putmarker!(r)
            move!(r,HorizonSide(j%4))
            while isborder(r,HorizonSide((j+1)%4))==true
                putmarker!(r)
                move!(r,HorizonSide(j%4))
            end
        end
        global done = true
    end
    while stepsSide > 0
        move!(r,HorizonSide((i+1)%4))
        stepsSide = stepsSide-1
    end
    while stepsFor > 0
        move!(r,HorizonSide((i+2)%4))
        stepsFor = stepsFor-1
    end
    global i = i+1
end