%DiffEq Homework 3 #3
%3.
%a)
%See System2

%b)
[t_out,v_out]=ode45(@system2,[0:0.01:38],[1,0]);

%c)
plot(v_out(:,1), v_out(:,2))
xlabel('xPrime')
ylabel('yPrime')
title('Phase Plane Solution for the Duffing Equation')