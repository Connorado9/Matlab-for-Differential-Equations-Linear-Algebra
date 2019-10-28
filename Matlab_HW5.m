%% Connor Humiston
% Matlab Homework 4

%1. See Eulers.m code file

%2.

%for h = [0.5 0.1 0.05 0.01]
%   hold on
%   Eulers(h)
%then put plot(t,y) in the function file
t1 = 0:0.5:23;
t2 = 0:0.1:23;
t3 = 0:0.05:23;
t4 = 0:0.01:23;
plot(t1,Eulers(0.5),t2,Eulers(0.1),t3,Eulers(0.05),t4,Eulers(0.01),'LineWidth',1.4)
title('Eulers Method with different step sizes','Fontsize',18)
xlabel('t-axis')
ylabel('y-axis')
legend('h = 0.5','h = 0.1','h = 0.05','h = 0.01')