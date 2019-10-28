%Component Curves x1 and x2 against t sec. 3.2
[t_out, x_out]=ode45(@pred_prey,[0,50],[0.5, 1]);
plot(t_out, x_out(:,1), 'Linewidth',2)
hold on
plot(t_out, x_out(:,2), 'Linewidth',2)
legend('x1 predators','x2 prey')
xlabel('Time (days)')
ylabel('Population (dozens of animals)')
title('Logistic Predator-Prey Component Curves', 'Fontsize',18)
grid on