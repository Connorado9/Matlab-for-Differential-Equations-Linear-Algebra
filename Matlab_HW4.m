%% Connor Humiston
%%Matlab Homework 4

%1.
%a)
%See bin_mean code below.

%b)
expected_value = bin_mean(100,0.3,75)

%c)
disp('n*p = ')
disp(100*0.3)
disp('Yes, n*p matches the answer found in part 1b.')


%2.
%a)
%See bin_xsq code below.

%b)
var = bin_xsq(100,0.3,75) - (bin_mean(100,0.3,75))^2

%c)
disp('n*p*(1-p) = ')
disp(100*0.3*(1-0.3))
disp('Yes, n*p*(1-p) matches the answer found in part 2b.')
