%a
clear all
clc
sum = 0;
e = input("You want to sum the numbers from 1 to how many? :");
for i = 1:1:e
    sum = sum + i;
end
disp(sum)

%b
clear all
clc

f=0;
sum = 0;
e = input("You want to sum the numbers from 1 to how many ? :");
while f < e
    f = f + 1;
    sum = sum + f;
end
disp(sum)