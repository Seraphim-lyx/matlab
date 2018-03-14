function expl(x)
i = 1;
t = 1;
sum = 0;
while t ~= 0
    t = x^(i-1)/factorial(i-1);
    sum = sum+t;
    i=i+1;
end
sum
