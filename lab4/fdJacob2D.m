function J = fdJacob2D(l,theta,alpha)
    j1 = (evalRobot2D(l,theta'+[alpha;0])-evalRobot2D(l,theta'-[alpha;0]))/(2*alpha);
    j2 = (evalRobot2D(l,theta'+[0;alpha])-evalRobot2D(l,theta'-[0;alpha]))/(2*alpha);
    J = [j1 j2]
end