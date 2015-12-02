% Abdullah Alghamdi 
% Part 1

load('human_data.mat')
theta1=[7;8];
alpha = 0.001
l=[1;1]';
theta0=[pi/3;pi/3]';
pos=[0.0;1.7320]';

[pos3,J]=evalRobot2D(l,theta1')
j=fdJacob2D(l,theta1',alpha)

% the difference in jacobian from evalRobot2D and fdJacob2D: 

difference = norm(J) - norm(j)