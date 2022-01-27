%% Curve Fitting - Abhinav Vashisth 20bch010

height = [0, 1.7, 1.95, 2.60, 2.92, 4.04, 5.24];
flow = [0, 2.6, 3.6, 4.03, 6.45, 11.22, 30.61];
new_height = 0:0.5:6;
polynomialOrder = 1; % Linear Polynomial
p1 = polyfit(height, flow, polynomialOrder); 
new_flow1 = polyval(p1,new_height);
polynomialOrder = 2; % Quadratic Polynomial
p2 = polyfit(height, flow, polynomialOrder);
new_flow2 = polyval(p2,new_height); 
polynomialOrder = 3; % Cubic Polynomial
p3 = polyfit(height, flow, polynomialOrder);
new_flow3 = polyval(p3,new_height);
%Plotting
plot(height, flow, 'o', new_height, new_flow1, new_height, new_flow2, new_height, new_flow3)
title('Curve fitting')
xlabel('Height-->')
ylabel('Flow-->')
legend('real data', 'Linear Polynomial', 'Quadratic Polynomial', 'Cubic Polynomial')