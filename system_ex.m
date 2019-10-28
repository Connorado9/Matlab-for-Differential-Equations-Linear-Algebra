%%Day 6

%Solving a second order ODE
%have to set up a system

%for the system x'' + x = 0
%set y = x'
%y' = x'' = -x
%x(0) = 1
%y(0) = x'(0) = 1

%x is v(1)
%y is v(2)

function v_out = system_ex(t,v)
    v_out = zeros(2,1); %zero matrix
    v_out(1) = v(2); %v_out(1) is x'
    v_out(2)=-v(1); %v_out(2) is x'' or y'
end