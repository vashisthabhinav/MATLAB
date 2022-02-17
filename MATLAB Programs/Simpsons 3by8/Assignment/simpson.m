%% Script file for Simpsons 3/8 rule method for integration in MATLAB
% Abhinav Vashisth(20bch010)
% limit from 0 to 5
n = input('Enter the number of iterations: ');
while (mod(n-1,3)~=0)
    n = n+1;
end
a = input('Enter lower limit a: ');
b = input('Enter upper limit b: ');

sum2 = 0.0;
sum3 = 0.0;
h = (b-a)/(n-1);

%Formula = (3h/8) * [(y0 + yn)+2*(y3+y6+.....yn-3)
%+3*(y1+y2+y4+y5+.....Yn-2 + yn-1)]
   
for i=1:n
    x(i) = a + (i-1)*h;
    y(i) = f(x(i));
end

for i = 2:n-1
    if (mod(i-1,3)~=0)
        sum3 = sum3 + y(i);
    else
        sum2 = sum2 + y(i);
    end
end
integral = (3*h/8)*(y(1)+y(n)+3*sum3+2*sum2);
fprintf('\n the value of intregration is %f\n',answer);