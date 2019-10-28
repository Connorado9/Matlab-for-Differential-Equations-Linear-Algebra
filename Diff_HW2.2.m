% Problem 2:
sum = 0;
for k=0:100
  sum = sum + ((-3)^(-k))/(2*k + 1);
end
S = sqrt(12)*sum
disp('This looks like Pi!')


% Problem 3:
t = linspace(-4,4,100); 
k = [1/2, 1, 2];
ys1 = k(1)*exp(-t.^2);
ys2 = k(2)*exp(-t.^2);
ys3 = k(3)*exp(-t.^2);
plot(t,ys1, t, ys2, t, ys3, 'linewidth', 2)

title('Solutions to a Differential Equation over [-4,4]', 'FontSize', 16)
xlabel('x-axis', 'FontSize', 16)
ylabel('y-axis', 'FontSize', 16)
legend('y1(t) = (1/2)e^(-t^2)', 'y2(t) = e^(-t^2)', 'y3(t) = (2)e^(-t^2)')
