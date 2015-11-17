theta1=[pi/4;pi/4]';
l=[1;1]';
theta0=[pi/4;pi/4]';
pos=[0.7071;1.7071]';
%[pos,J]=evalRobot2D(l,theta1)

[theta]=invKin2D(l,theta0,pos,10, 0)


