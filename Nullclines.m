%Part 3 Plot
%Nullclines & Equilibrium Solutions
x1 = @(x) 1.5/1.1;
y0 = @(x) 0;
y1 = @(y) (1/0.5)-(1.4/(2.5*0.5)).*y;
a = line([0 0], [-1 6]);
s = a.Color;
a.Color = 'g';
hold on
line([-1 6], [1.363636 1.363636])
fplot(y0, [-1 6], 'r')
fplot(y1, [-1 6], 'k')
plot(0,0,'o') %equilibrium (0,0)
plot(0.5681,1.3636,'o') %equilibrium point 3
plot(0,2,'o') %equilibrium point (0,1/k)
axis([-1 6 -1 6])

%Phase Solution
[t_out, x_out]=ode45(@pred_prey,[0,50],[0.5, 1]);
plot(x_out(:,1), x_out(:,2), 'Linewidth', 1.5)
xlabel('x1')
ylabel('x2')
title('Logistic Predator-Prey Phase Portrait, Nullclines, and Solutions', 'Fontsize',17)
legend('dx1 = 0', 'dx1 = 0', 'dx2 = 0', 'dx2 = 0', 'Eq. Pt. (0,0)', 'Eq. Pt. ((cb-cka)/bd,a/b)','Eq. Pt. (0,1/k)', 'Phase Solution, (x1,x2)')

%Phase Portrait of of x2 vs x1    
%intervals x1min < x1 < x1max, x2min < x2 < x2max
x1min = -1; x1max = 6; x2min = -1; x2max = 6;
%step sizes for x1 and x2
x1step = 0.75; x2step = 0.75;
%generate mesh for plotting
[x1, x2] = meshgrid(x1min:x1step:x1max, x2min:x2step:x2max);
%parameter variables
a = 1.5; b = 1.1; c = 2.5; d = 1.4; k = 0.5;
%system of equations
dx1 = -a*x1 + b*x1.*x2;
dx2 =  c*(1-k*x2).*x2 - d*x1.*x2;
%normalizing vectors
dx1 = dx1./sqrt(dx1.^2 + dx2.^2);
dx2 = dx2./sqrt(dx1.^2 + dx2.^2);
%generating vector field
quiver(x1, x2, dx1,dx2,'AutoScaleFactor',0.5)
%specifying plotting axis
axis([x1min x1max x2min x2max])
%labeling and title
xlabel('$x1$','Interpreter','latex')
ylabel('$x2$','Interpreter','latex')
title('Predator Prey Phase Portrait','Fontsize',18,'Interpreter','latex')