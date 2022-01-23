f = @(x) 3*x + sin(x) - exp(x);
x1 = input("Enter the upper limit x1: ");
x2 = input("Enter the lower limit x2:");
n = input("Enter number of iterations :");
e = 0.0001;%Tolerance for Stopping Criteria

if f(x1)*f(x2)<0 && x1<x2
    % f(x1) and f(x2) should have different signs and x1 should be less
    % than x2 in order to use regula-falsi method
   for i = 1:n
        xh = ( x1*f(x2) - x2*f(x1) ) / ( f(x2) - f(x1));

        fprintf("P%d = %.4f \n",i,xh)

        if abs(xh-x2) < e || abs(xh-x1) < e || f(xh)==0
            fprintf("Therefore, %f is the root of the given equation.",xh)
            break
        end
        
        if f(x1) * f(xh) < 0
          x2 = xh;
        elseif f(x2) * f(xh) < 0
          x2 = xh;
        end
    end
else 
    fprintf("There is no root between the given brackets.")
end