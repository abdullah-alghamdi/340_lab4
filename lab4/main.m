theta1=[pi/3;pi/3]';
l=[1;1]';
theta0=[pi/3;pi/3]';
pos=[0.0;1.7320]';
%[pos3,J]=evalRobot2D(l,theta0)

[theta]=invKin2D(l,theta1,pos,30, 0)

