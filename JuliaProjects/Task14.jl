r = Robot()
for i in 0:3
    stepsFor=0
    stepsSide=0
    Wall = false
    while Wall == false
        Wall = true
        while isborder(r,HorizonSide(i))==false
            move!(r,HorizonSide(i))
            stepsFor = stepsFor + 1
        end
        while (isborder(r,HorizonSide(i))==true) && (isborder(r,HorizonSide((i+3)%4))==false)
            move!(r,HorizonSide((i+3)%4))
            stepsSide = stepsSide + 1
        end
        if isborder(r,HorizonSide(i))==false
            Wall = false
            move!(r,HorizonSide(i))
            stepsFor = stepsFor + 1
            while isborder(r,HorizonSide((i+1)%4))==true
                move!(r,HorizonSide(i))
                stepsFor = stepsFor + 1
            end
        end
        while stepsSide > 0
            move!(r,HorizonSide((i+1)%4))
            stepsSide = stepsSide - 1
        end
    end
    putmarker!(r)
    while stepsFor > 0
        while isborder(r,HorizonSide((i+2)%4))==true
            while isborder(r,HorizonSide((i+2)%4))==true
                move!(r,HorizonSide((i+3)%4))
                stepsSide = stepsSide + 1
            end
            move!(r,HorizonSide((i+2)%4))
            stepsFor = stepsFor - 1
            while isborder(r,HorizonSide((i+1)%4))==true
            move!(r,HorizonSide((i+2)%4))
            stepsFor = stepsFor - 1
            end
            while stepsSide > 0
                move!(r,HorizonSide((i+1)%4))
                stepsSide = stepsSide - 1
            end
            putmarker!(r)
        end
        if stepsFor > 0
        move!(r,HorizonSide((i+2)%4))
        stepsFor = stepsFor - 1
        putmarker!(r)
        end
    end
end