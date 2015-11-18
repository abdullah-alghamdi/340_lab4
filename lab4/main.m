theta1=[pi/2;pi/2]';
l=[1;1]';
theta0=[pi/3;pi/3]';
pos=[0.0;1.7320]';
%[pos,J]=evalRobot2D(l,theta0)

[theta]=invKin2D(l,theta1,pos,20, 0)


