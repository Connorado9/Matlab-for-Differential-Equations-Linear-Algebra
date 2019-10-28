%% Homework 3
% Connor Humiston

%1. 
%a) 
%See sum_calc1(x,N) function

%b)
sum_calc1(1,100);

%c)
x = [-2:0.5:5];
plot(x,sum_calc1(x,100),'LineWidth',1.5)
title('f(x) versus x','FontSize',16)
xlabel('x-axis')
ylabel('y-axis')

%2. 
%a)
[t_out,v_out]=ode45(@system1,[0,25],[1,2,3,4]);

%b)
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

%c)
plot(v_out(:,2), v_out(:,3))
xlabel('x2')
ylabel('x3')
title('x2 Versus v3')

