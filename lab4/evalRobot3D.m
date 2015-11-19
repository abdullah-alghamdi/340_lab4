function [pos,J] = evalRobot3D(M,theta)
    Rx1 = Rx(theta(1));
    Ry2 = Ry(theta(2));
    Rz3 = Rz(theta(3));
    Rx4 = Rx(theta(4));
    
    pos = M(1)*Rz3*Ry2*Rx1*M(2)*Rx4*M(3)*[0 0 0 1]'
   
end