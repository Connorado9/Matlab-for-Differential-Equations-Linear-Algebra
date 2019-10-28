%DiffEq HW 3 #2c
%2.
[t_out,v_out]=ode45(@system1,[0,25],[1,2,3,4]);

%c)
plot(v_out(:,2), v_out(:,3))
xlabel('x2')
ylabel('x3')
title('x2 Versus v3')
