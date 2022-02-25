f = input('Enter the function: ');
h = input('Enter step size: ');
d = input('Derivative to be computed: ');
x = input('Point where approximate derivative is required: ');
if d== 1
    Fd2 = (f(x+h)-f(x))/h; %Forward 2-point 
    Bd2 = (f(x)-f(x-h))/h; %Backward 2-point 
    Cd2 = (f(x+h)-f(x-h))/(2*h); %Central 2-point 
    Fd3 = (4*f(x+h)-f(x+2*h)-3*f(x))/(2*h);%Forward 3-point 
    Bd3 = (-4*f(x-h)+f(x-2*h)+3*f(x))/(2*h);%Backward 3-point
    fprintf('Results for 2-point formula\n');
    fprintf('Forward: %.4f\n',Fd2);
    fprintf('Backward: %.4f\n',Bd2);
    fprintf('Central: %.4f\n',Cd2);
    fprintf('Results for 3-point formula\n');
    fprintf('Forward: %.4f\n',Fd3);
    fprintf('Backward: %.4f\n',Bd3);

elseif d==2
    Fd3 = (f(x+2*h)-2*f(x+h)+f(x))/(h^2);%Forward 3-point 
    Bd3 = (f(x-2*h)-2*f(x-h)+f(x))/(h^2);%Backward 3-point
    Cd3 = (f(x+h)-2*f(x)+f(x-h))/(h^2);%Central 3-point
    fprintf('Results for 3-point formula\n');
    fprintf('Forward: %.4f\n',Fd3);
    fprintf('Backward: %.4f\n',Bd3);
    fprintf('Central: %.4f',Cd3)
else   
    fprintf('Differentiation only till the second derivative.')
end