f =  @(x) exp(x)./(1+x);
a = input('Enter the lower limit: ');
b = input('Enter the upper limit: ');
n = input('Enter the number of subinterval: ');
h = (b-a)/n;

if rem(n,3)==0 %remainder when dividing n by 3
    fprintf('\nIt is a valid n.\n')
else 
    fprintf ('\n Enter n as a multple of 3.\n');
    n = input('Enter the number of subinterval: ');
end

k = 1:1:n-1;
S = f(a+k.*h);
I = 3:3:n-1;
S3 = sum(S(I));
So = sum(S3); %Compute sum
out = (3*h/8).*(f(a) + f(b) + 3.*So + 2.*S3);
fprintf('The value of integration is %f\n', out);