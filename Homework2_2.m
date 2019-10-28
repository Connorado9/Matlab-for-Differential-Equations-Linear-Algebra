%%Connor Humiston
%%2. g(x) = (x+ 2)(x?1)(x?4) over the interval x?[?4,5].  
%%Plot a red line along the x-axis and plot crosses at the roots of g(x).
x = linspace(-4,5,100);
g1 = (x+2).*(x-1).*(x-4);

x2 = [-2, 1, 4];
y = [0, 0, 0];

plot(x, g1, x2, y, 'x', x, x*0, 'LineWidth',2);
title('The roots of g(x) = (x+2)(x-1)(x-4) over the interval x?[?4,5]','FontSize',16)
xlabel('x-axis', 'FontSize', 16)
ylabel('y-axis', 'FontSize', 16)
legend('g(x) = (x+2)(x-1)(x-4)')
saveas(gcf,'Figure 2', 'png')
