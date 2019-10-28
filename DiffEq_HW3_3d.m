%DiffEq Homework 3 #3d
%3.
[t_out,v_out]=ode45(@system2,[0:0.01:38],[1,0]);

%d)
plot(t_out,v_out(:,1))
hold on
plot(t_out,v_out(:,2))
legend('x(t)','y(t)')
xlabel('t-axis')
ylabel('x and y-axis')
title('Component Curve Solutions for the Duffing Equation','FontSize',16)
hold off