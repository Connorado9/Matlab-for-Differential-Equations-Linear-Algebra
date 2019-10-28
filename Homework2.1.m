%%Connor Humiston
%%1. fn(?) = cos(n??) over the interval ??[??,?] for n= 1/2,1,2.  
%%Plot all on the same graph withthick lines of different colors.  
%%Use a legend.

n=[1/2 1 2];
x = linspace(-pi,pi,100);
f1 = cos(n(1)*x.*pi);
f2 = cos(n(2)*x.*pi);
f3 = cos(n(3)*x.*pi);

plot(x,f1, x, f2, x, f3, 'LineWidth',2) 
title('f_n = cos(n\theta\pi) over the interval ??[??,?] for n = 1/2, 1, 2', 'FontSize', 16)
xlabel('x-axis', 'FontSize', 16)
ylabel('y-axis', 'FontSize', 16)
legend('cos(1/2\theta\pi)', 'cos(1\theta\pi)', 'cos(2\theta\pi)')
saveas(gcf,'Figure 1', 'png')