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
dx2 = c*(1-k*x2)*x2 - d*x1.*x2;

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