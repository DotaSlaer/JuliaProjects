r = Robot()
stepsY=0
stepsX=0
function MarkChess(r=Robot(),n=1)
    mark = false
    stepsCurVert = 0
    while isborder(r,Nord)==false
        stepsCurHor = 0
        while isborder(r,Ost)==false
            if stepsCurHor%n == 0
                mark=!mark
            end
            if mark==true
                putmarker!(r)
            end
            move!(r,Ost)
            stepsCurHor = stepsCurHor+1
        end
        if stepsCurHor%n == 0
            mark=!mark
        end
        if mark==true
            putmarker!(r)
        end
        while isborder(r,West)==false
            move!(r,West)
        end
        move!(r,Nord)
        stepsCurVert = stepsCurVert+1
        if stepsCurVert%n == 0
            mark=!mark
        end
    end
    stepsCurHor = 0
    while isborder(r,Ost)==false
        if stepsCurHor%n == 0
            mark=!mark
        end
        if mark==true
            putmarker!(r)
        end
        move!(r,Ost)
        stepsCurHor = stepsCurHor+1
    end
    if stepsCurHor%n == 0
        mark=!mark
    end
    if mark==true
        putmarker!(r)
    end
end
while isborder(r,Sud)==false
    move!(r,Sud)
    global stepsY=stepsY+1
end
while isborder(r,West)==false
    move!(r,West)
    global stepsX=stepsX+1
end
n = 3
MarkChess(r,n)
while isborder(r,Sud) == false
    move!(r,Sud)
end
while isborder(r,West)==false
    move!(r,West)
end
while stepsY > 0
    move!(r,Nord)
    global stepsY = stepsY-1
end
while stepsX > 0
    move!(r,Ost)
    global stepsX = stepsX-1
end