f(x) = @(x) x*(x-2)*(x-3);
a= input('Enter the lower limit of the integration:');
 b= input('Enter the upper limit of the integration:');
 N =  input('Enter the no. of trapeziums or sub intervals:');
 if rem(N,3)==0
     fprintf('\n the sub interval is a multiple of 3\n');
 else
     fprintf('\nThe sub interval is not the multiple of 3\n');
 end
 h= (b-a)/N;
 sum3 = 0;
 for i=3:3:N-1
     sum3 = sum3 + fsimp(a+i*h);
 end
 sum = 0;
 for l=1:N-1
     sum = sum + fsimp(a+l*h);
 end

 sumnot3 = sum - sum3 ;
 sim38 = (3*h/8)*(fsimp(b) + 3*(sumnot3) + 2*(sum3) + fsimp(a));
 fprintf('The result by using the simpson3/8 rule is : %.6f\n',sim38);