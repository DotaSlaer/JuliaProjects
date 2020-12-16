r = Robot()
function Temp(r = Robot())
    Count = 0
    Sum = 0
    while isborder(r,Nord)==false
        while isborder(r,Ost)==false
            if ismarker(r)==true
                Sum = Sum + temperature(r)
                Count = Count + 1
            end
            move!(r,Ost)
        end
        if ismarker(r)==true
            Sum = Sum + temperature(r)
            Count = Count + 1
        end
        while isborder(r,West)==false
            move!(r,West)
        end
        move!(r,Nord)
    end
    while isborder(r,Ost)==false
        if ismarker(r)==true
            Sum = Sum + temperature(r)
            Count = Count + 1
        end
        move!(r,Ost)
    end
    if ismarker(r)==true
        Sum = Sum + temperature(r)
        Count = Count + 1
    end
    if Count == 0 
        return 0
    else
        return (Sum / Count)
    end
end
Temp(r)