function [pos,J]=evalRobot2D(l,theta)


x = l(1).*cos(theta(1)) + l(2).*cos(theta(1) + theta(2));
y = l(1).*sin(theta(1)) + l(2).*sin(theta(1) + theta(2));
pos = [x;y];



d3=-l(1).*sin(theta(1)) - l(2).*sin(theta(1) + theta(2));
d4= -l(2).*sin(theta(1) + theta(2));

dd3=l(1).*cos(theta(1)) + l(2).*cos(theta(1) + theta(2));
dd4=l(2).*cos(theta(1) + theta(2));
J =[d3,d4
    dd3,dd4];


end 
