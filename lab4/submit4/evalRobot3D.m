% Abdullah Alghamdi 
% evalRobot3D for part2 


function [pos,J] = evalRobot3D(M,theta)
    
    M_hip=M{1,1};
    M_knee=M{1,2};
    M_foot=M{1,3};
  
    % Transformations 
    Rx1 = [1 0 0 0; 0 cos(theta(1)) -sin(theta(1)) 0; 0 sin(theta(1)) cos(theta(1)) 0; 0 0 0 1];
    Ry2 = [cos(theta(2)) 0 sin(theta(2)) 0; 0 1 0 0 ; -sin(theta(2)) 0 cos(theta(2)) 0; 0 0 0 1];
    Rz3 =  [cos(theta(3)) -sin(theta(3)) 0 0; sin(theta(3)) cos(theta(3)) 0 0; 0 0 1 0; 0 0 0 1];
    Rx4 = [1 0 0 0; 0 cos(theta(4)) -sin(theta(4)) 0; 0 sin(theta(4)) cos(theta(4)) 0; 0 0 0 1];
    
    % f(theta)
    pos = M_hip*Rz3*Ry2*Rx1*M_knee*Rx4*M_foot*[0;0;0;1];
    pos=pos(1:3,:);
    
    % derivatives for all Rs
    difrx1 = [0 0 0 0; 0 -sin(theta(1)) -cos(theta(1)) 0; 0 cos(theta(1)) -sin(theta(1)) 0; 0 0 0 0];
    difry = [-sin(theta(2)) 0 cos(theta(2)) 0; 0 0 0 0 ; -cos(theta(2)) 0 -sin(theta(2)) 0; 0 0 0 0];
    difrz = [-sin(theta(3)) -cos(theta(3)) 0 0; cos(theta(3)) -sin(theta(3)) 0 0; 0 0 0 0; 0 0 0 0];
    difrx4 = [0 0 0 0; 0 -sin(theta(4)) -cos(theta(4)) 0; 0 cos(theta(4)) -sin(theta(4)) 0; 0 0 0 0];
    
    % build the Jacobian 
    J(:,1)=M_hip*Rz3*Ry2*difrx1*M_knee*Rx4*M_foot*[0;0;0;1];
    J(:,2)= M_hip*Rz3*difry*Rx1*M_knee*Rx4*M_foot*[0;0;0;1];
    J(:,3)=  M_hip*difrz*Ry2*Rx1*M_knee*Rx4*M_foot*[0;0;0;1];
    J(:,4)= M_hip*Rz3*Ry2*Rx1*M_knee*difrx4*M_foot*[0;0;0;1];
    J=J(1:3,:); % get rid of the last row 
   
end