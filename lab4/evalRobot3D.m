function [pos,J] = evalRobot3D(M,theta)
    Rx1 = [1 0 0 0; 0 cos(theta(1)) -sin(theta(1)) 0; 0 sin(theta(1)) cos(theta(1)) 0; 0 0 0 1];
    Ry2 = [cos(theta(2)) 0 sin(theta(2)) 0; 0 1 0 0 ; -sin(theta(2)) 0 cos(theta(2)) 0; 0 0 0 1];
    Rz3 =  [cos(theta(3)) -sin(theta(3)) 0 0; sin(theta(3)) cos(theta(3)) 0 0; 0 0 1 0; 0 0 0 1];
    Rx4 = [1 0 0 0; 0 cos(theta(4)) -sin(theta(4)) 0; 0 sin(theta(4)) cos(theta(4)) 0; 0 0 0 1];
    
    pos = M(1)*Rz3*Ry2*Rx1*M(2)*Rx4*M(3)*[0 0 0 1]'
    
    rx = [0 0 0 0; 0 -sin(theta) -cos(theta) 0; 0 cos(theta) -sin(theta) 0; 0 0 0 0];
    ry = [-sin(theta) 0 cos(theta) 0; 0 1 0 0 ; -cos(theta) 0 -sin(theta) 0; 0 0 0 0];
    rz = [-sin(theta) -cos(theta) 0 0; cos(theta) -sin(theta) 0 0; 0 0 0 0; 0 0 0 0];
   
end