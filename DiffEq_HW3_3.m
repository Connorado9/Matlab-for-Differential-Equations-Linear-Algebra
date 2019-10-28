%DiffEq Homework 3 #3
%3.
%a)
%See System2

%b)
[t_out,v_out]=ode45(@system2,[0:0.01:38],[1,0]);

%c)
plot(t_out,v_out(:,1))
hold on
plot(t_out,v_out(:,2))
plot(t_out,v_out(:,3))
plot(t_out,v_out(:,4))
legend('x1','x2','x3','x4')
xlabel('x-axis')
ylabel('y-axis')
title('Component Curve Solutions','FontSize',16)
hold off