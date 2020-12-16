function Obstacle(r=Robot(),i=0,mark=false)
    wall = true
    stepsSide = 0
    while (isborder(r,HorizonSide(i))==true) && (isborder(r,HorizonSide((i+3)%4))==false)
        move!(r,HorizonSide((i+3)%4))
        stepsSide = stepsSide + 1
    end
    if isborder(r,HorizonSide(i))==false
        Wall = false
        move!(r,HorizonSide(i))
        while isborder(r,HorizonSide((i+1)%4))==true
            move!(r,HorizonSide(i))
        end
    end
    while stepsSide > 0
        move!(r,HorizonSide((i+1)%4))
        stepsSide = stepsSide - 1
    end
    return wall
end
function MoveToBorder(r=Robot(),i=0,mark=false)
    wall = false
    while wall == false
        while isborder(r,HorizonSide(i))==false
            move!(r,HorizonSide(i))
            if mark == true
                putmarker!(r)
            end
        end
        wall = Obstacle(r,i,mark)
        if mark == true
            putmarker!(r)
        end
    end
end
function GetPosition(r=Robot())
    X=0
    Y=0
    while (isborder(r,Sud) == false) || (isborder(r,West)==false)
        while isborder(r,Sud)==false
            move!(r,Sud)
            Y=Y+1
        end
        while isborder(r,West)==false
            move!(r,West)
            X=X+1
        end
    end
    ReturnToPosition(r,X,Y)
    return X,Y
end
function ReturnToPosition(r=Robot(),X=0,Y=0)
    while (isborder(r,Sud) == false) || (isborder(r,West)==false)
        while isborder(r,Sud)==false
            move!(r,Sud)
        end
        while isborder(r,West)==false
            move!(r,West)
        end
    end
    while Y > 0
        if (isborder(r,Nord)==true) & (Y > 0)
            while isborder(r,Nord)==true
                move!(r,West)
                X = X+1
            end
            move!(r,Nord)
            Y = Y-1
            while isborder(r,Ost)
                move!(r,Nord)
                Y = Y-1
            end
        else
            if X == 0
                move!(r,Nord)
                Y = Y-1
            end
        end
        while X > 0
            move!(r,Ost)
            X = X-1
        end
    end
end