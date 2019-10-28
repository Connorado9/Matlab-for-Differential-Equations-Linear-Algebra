%Section 3.1.3
close all; clear all; 
% Set bounds
x1min = -1; x1max = 6; x2min = -1; x2max = 6;

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

%Generate the phase portrait
    vfield = quiver(x1, x2, dx1,dx2,'AutoScaleFactor',0.5,'Color','blue');
    hold on

%Plot nullclines

   %Horizontal
   hx1 = yline(0,'red');
   hold on
   hx2 = yline(a./b,'black');
   hold on
   
   %Vertical
   vx1 = xline(c./d,'red');
   hold on
   vx2 = xline(0,'black');
   hold on
   
%Plot equillibrium points
    plot(0,0,'g*');
    hold on
    plot(c./d,a./b,'g*');
    hold on
    
%Specify the plotting axes
    axis([x1min x1max x2min x2max])

% Label the axes 
    xlabel('$x1$','Interpreter','latex')
    ylabel('$x2$','Interpreter','latex')
    title('Lotka-Volterra System','Interpreter','latex')
    


