r = Robot()
i = 0
steps = 1
while ismarker(r)==false
    for j in 0:1
        stepsCur = steps
        while stepsCur > 0
            if ismarker(r)==false
                move!(r,HorizonSide((i+j)%4))
            end
            stepsCur = stepsCur-1
        end
    end
    global i = i+2
    global steps = steps+1
end