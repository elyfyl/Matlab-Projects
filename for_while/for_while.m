%a
clear all
clc
sum = 0;
e = input("Do you want to add the numbers from 1 to what?? :");
for i = 1:1:e
    sum = sum + i;
end
disp(sum)

%b
clear all
clc

f=0;
sum = 0;
e = input("Do you want to add the numbers from 1 to what? :");
while f < e
    f = f + 1;
    sum = sum + f;
end
disp(sum)
