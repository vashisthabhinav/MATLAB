f = inline('1/(1+x)');
a = input('Enter the lower limit a: ');
b = input('Enter the upper limit b: ');
n = input('Enter the number of sub-intervals N: ');
h = (b-a)/n;

if rem(n,3) ~=0
    fprintf('Enter valid n!!');
    n = ('Enter n as multiple of 3: ');
end
s0 = 0;
sm3 = 0;

for k = 1:1:n-1
    x(k) = a + k*h;
    y(k) = f(x(k));
    if rem(k,3)==0
        sm3 = sm3 + y(k); %sum of terms of multiple of 3
    else 
        s0 = s0 + y(k); %sum of other terms
    end
end
answer = (3*h/8)*(f(a) + f(b) + 3*s0 + 2*sm3);
fprintf('The value of integration is %f', answer);
