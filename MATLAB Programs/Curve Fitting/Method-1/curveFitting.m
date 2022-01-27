
height = [0, 1.7, 1.95, 2.6, 2.92, 4.04, 5.24];
flow = [0, 2.6, 3.6, 4.03, 6.45, 11.22, 30.61];
new_height = 0:0.5:6; %new height for model testing
F = input('Enter 1 for linear fit, 2 for parabolic and so on...: ');
n = length(height);
N = F+1;%2x2 matrix is formed for linear, 3x3 for quadratic, etc.
% N is for dimention of matrix A
A = zeros(N,N);

for i=1:N
    for j=1:N
        A(i,j) = sum(height.^(i+j-2));
    end
end
B = zeros(N,1);
for k=1:N
    B(k) = sum((height.^(k-1)).*flow);
end
U = A\B; %Built-in command of MATLAB to solve the system of equations
%Displaying Polynomial
fprintf('The polynomial is: ')
for m = N:-1:2
    fprintf('+(%.4fx^%d)',U(m),m-1)
end
fprintf('+(%.4f)\n',U(1))

%Plotting
P = flip(U);
x = linspace(height(1),height(n),100);
y = polyval(P,x);
plot(x,y,'g')
hold on
plot(height,flow,'o')
