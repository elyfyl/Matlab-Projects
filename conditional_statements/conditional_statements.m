clear all 
clc

degree =0;
while degree < 2000
    degree = input("Enter temperature value:");
    if degree >= 30
        disp("You better wear shorts.")
    elseif 18 < degree && degree < 30
        disp("It is a beautiful day.")
    elseif degree <= 18
        disp("It makes sense if you wear a jacket or coat.")
    end

end