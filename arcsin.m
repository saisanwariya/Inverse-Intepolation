%{
    Programmer:    Sai Narayan
    Assessment:    Final Project - Part 2
    Date:          21 November 2022
    Description:   arcsin-Function

    Integrity Statement: I have completed this work with integrity. 
                        -- Sai Narayan 
                          (ssn5137)
%}  


function [y,y0] = arcsin(x)

load pparcsin_ssn5137
tol = 1e-14; y0 = ppval(pp,x);
g = @(y) x-sin(y); gdot = @(y) - cos(y);

for i=1:5
    if i==1
        y=y0;
    end
    
    y = y-g(y)/gdot(y);
    if abs(g(y)/gdot(y)) <= tol*max(abs(y))
        break
    end
end
    