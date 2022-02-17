f = @(x) sin(x);
x0 = input('Enter the value of x0(lower limit): ');
xn = input('Enter the value of xn(upper limit): ');
n =  input('Enter the value of intervals: ');
h = (xn-x0)/n;
s = f(x0) + f(xn);
for i=1:2:n-1
    s = s + 4*f(x0+i*h);
end

for j=2:2:n-1
    s = s + 2*f(x0+j*h);
end

I = h/3*s;
fprintf('Final result by Simpsons method: %i',I)