theta=[pi/4;pi/4]';
l=[1;1]';

[pos,J]=evalRobot2D(l,theta)

theta=invKin2D(l,pi/4,[0.7071;1.7071]') 


