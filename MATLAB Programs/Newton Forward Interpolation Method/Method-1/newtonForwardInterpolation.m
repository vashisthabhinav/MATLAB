%% Newton's Forward Interpolation Method
% Submitted by- Abhinav Vashisth
% Roll No.- 20bch010

X = input('Enter list of abscissas: ');
Y = input('Enter list of ordinates: ');
p0 = input('Enter point of approximations: ');

n = length(X);
h = X(2)-X(1);
F = zeros(n,n);
F(:,1) = Y;
for j = 2:n
    for i = j:n
        F(i,j) = F(i,j-1) - F(i-1,j-1);
    end
end
F
C = F(n,n);
for k = n-1:-1:1
    p = poly(X(1))/h;
    p(2) = p(2) - (k-1);
    C = conv(C,p)/k;
    m = length(C);
    C(m) = C(m) + F(k,k);
end
C

A = polyval(C,p0);
fprintf('Approximate value at given data point is: %.4f\n',A);