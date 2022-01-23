%% MATLAB code to find the roots of the equation using Bisection Method

f = @(x) 2^x -5*x +2;
x1 = input("Enter the lower limt x1: ");
x2 = input("Enter the upper limit x2: ");
n = input("Enter the number of iterations: ");
e = 0.0001;
if f(x1)*f(x2)<0

    for i=1:n

        xh = (x1+x2)/2;
      
        fprintf('P%d = %.4f\n',i,xh)
        if abs(xh-x2)<e || abs(xh-x1)<e
            break
        end
        if f(x1)*f(xh)<0
            x2 = xh;
        elseif f(x2)*f(xh)<0
            x1 = xh;
        end
    end
else
    fprintf("No root between given brackets\n")
end
