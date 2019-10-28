%Section 3.1.6
close all; clear all; 
% Set bounds
x1min = 0; x1max = 20; x2min = 0; x2max = 5;

%Set step size
x1step = 0.5; x2step = 0.5; 

%Create plot
[x1, x2] = meshgrid(x1min:x1step:x1max, x2min:x2step:x2max);

%Set values for constants
a = 1.5; b = 1.1; c = 2.5; d = 1.4; 

%Lotka-Volterra System
    dx1 = -a.*x1 + b.*x1.*x2;  
    dx2 =  c.*x2 - d.*x1.*x2; 
    
%Normalize vectors
    dx1 = dx1./sqrt(dx1.^2 + dx2.^2); 
    dx2 = dx2./sqrt(dx1.^2 + dx2.^2); 

   
%Plot component curves
[t, v,] = ode45(@sys1, [0,20],[0.5,1.0]);
plot(t,v(:,1),'Linewidth',2);
hold on
[t, v,] = ode45(@sys1, [0,20],[0.5,1.0]);
plot(t,v(:,2),'Linewidth',2);
hold on
legend('x1 Predators','x2 Prey')

%Specify the plotting axes
    axis([x1min x1max x2min x2max])

% Label the axes
    xlabel('Time (days)','Interpreter','latex')
    ylabel('Population (dozens of animals)','Interpreter','latex')
    title('Component Curves for Lotka-Volterra System','Fontsize',18,'Interpreter','latex')
    grid on


