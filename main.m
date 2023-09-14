%{
    Programmer:    Sai Narayan
    Assessment:    Final Project - Part 2
    Date:          21 November 2022
    Description:   Main

    Integrity Statement: I have completed this work with integrity. 
                        -- Sai Narayan 
                          (ssn5137)
%}  


clear, clc, close all

%%Part I (Inverse Intepolation) 
a=0; b=sqrt(2)/2; h=(b-a)/10; 
yvals=a:h:b;       %y-values
xvals=sin(yvals);  %x-values 

%% Part II (Inverse Interpolation implementation)
endconds=[1/(sqrt(1-(a^2))) 1/(sqrt(1-(b^2)))];
pp=csape(xvals,yvals,'complete',endconds);
save pparcsin_ssn5137 pp

%% Part III and IV (Inverse Sin Function)
c = xvals(11); hh = (c/99);
xx = 0:hh:c; yy = zeros(size(xx));
yy0 = yy;
for i = 1:length(xx)
    [yy(i),yy0(i)] = arcsin(xx(i));
end

err=yy-asin(xx); err0=yy0-asin(xx);

%%Graphs

%Plot 1
plot(xx,yy,'r'); title 'asin(x) Graph'
xlabel('x-axis'); ylabel('y-axis')
grid on

%Plot 2
figure name 'Newton Error'
plot(xx,err,'-x','MarkerIndices',2:7:length(err))
xlabel('x-axis'); ylabel('Error')
grid on

%Plot 3
figure Name 'Inverse interpolation error' 
plot(xx,err0,'-*','MarkerIndices',2:7:length(err0))
xlabel('x'); ylabel('err0')
grid on
