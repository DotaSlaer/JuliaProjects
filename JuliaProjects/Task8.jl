r = Robot()
i=1
steps=1
while isborder(r,Nord)==true
    stepsCur=steps
    while stepsCur > 0
        move!(r,HorizonSide(i%4))
        stepsCur = stepsCur-1
    end
    global steps = steps+1
    global i = i+2
end