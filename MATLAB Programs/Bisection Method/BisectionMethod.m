% Bisection Method for 2sin(x^2) - x = 0

% Function in terms of independent variable x.
f = @(x) 2*sin(x^2) - x ;
a = input("Enter left side of interval :");

b = input("Enter right side of interval :");

n = input("Enter number of iterations :");

e = input("Enter tolerance :");

if f(a)*f(b) < 0
    for i = 1:n
        c = (a+b)/2;

        fprintf("P%d = %.4f \n",i,c)

        if abs(c-b) < e || abs(c-a) < e || f(c)==0
            disp(+c+ " is the root.")
            break
        end
        
        if f(a) * f(c) < 0
          b = c;
        elseif f(b) * f(c) < 0
          a = c;
        end
    end
else 
    disp("No root between given brackets.")
end