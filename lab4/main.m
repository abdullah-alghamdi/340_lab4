load('human_data.mat')
theta1=[7;8;9;16]';
[m1,m2,m3]=Ml{:}
M1=[m1;m2;m3]
% alpha = 0.001
% l=[1;1]';
% theta0=[pi/3;pi/3]';
% pos=[0.0;1.7320]';
% [pos3,J]=evalRobot2D(l,theta1)
% j=fdJacob2D(l,theta1,alpha)
%[theta]=invKin2D(l,theta1,pos,30, 0)

[pos]=evalRobot3D(M1,theta1)