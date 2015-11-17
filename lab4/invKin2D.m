function theta=invKin2D(l,theta0,pos) 

theta1 = atan(pos(1)./pos(2))
theta = [theta0,theta1]';

[pos1,J]=evalRobot2D(l,theta)

err = pos1(:) - pos(:)

end 
    

