% This plots the phase-plane solution (x1, x2)
[t_out, x_out]=ode45(@pred_prey,[0,50],[0.5, 1]);
plot(x_out(:,1), x_out(:,2))
hold on
xlabel('x1')
ylabel('x2')
title('Phase Plane (x,y)','Fontsize',18)