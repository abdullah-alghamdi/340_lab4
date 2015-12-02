% Abdullah Alghamdi 
% We need small alpha to get better result , 0.001 is good enough 
function Jc = fdJacob2D(l,theta,alpha)
    j1 = (evalRobot2D(l,theta'+[alpha;0])-evalRobot2D(l,theta'-[alpha;0]))/(2*alpha);
    j2 = (evalRobot2D(l,theta'+[0;alpha])-evalRobot2D(l,theta'-[0;alpha]))/(2*alpha);
    Jc = [j1 j2]
end