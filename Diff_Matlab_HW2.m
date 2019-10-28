% Connor Humiston
% APPM 2360 Matlab Homework 2
% Due: Thursday, January 31, 2019

% Problem 1:
x = -10:0.1:8;
f = (x-6).*(x.^2-1).*(x+8);
hold on
plot(x, f,'LineWidth',2);
title('The roots of f(x) = (x-6)(x^2-1)(x+8) on [-10,8]','Fontsize',16)
xlabel('x-axis', 'FontSize', 16)
ylabel('y-axis', 'FontSize', 16)
 

xL = xlim;
yL = ylim;
line(xL, [0 0],'color','k','linewidth',2) %x-axis
line([0 0], yL,'color','k','linewidth',2) %y-axis

x2 = [-8 -1 1 6]; %intercepts
y = [0 0 0 0];

plot(x2, y, 'x')
legend('f(x) = (x-6)(x^2-1)(x+8)')
hold off



