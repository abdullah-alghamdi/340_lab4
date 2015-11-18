function [theta]=invKin2D(l,theta0,pos,n, mode) 


if mode==0
    k=0;
    while k<n
        
       [pos0,J]=evalRobot2D(l,theta0);
       
      
      
        if abs(pos' -pos0) < [0.00005;0.00005]
            disp('now they are almost equal')
           break
        end
        disp('old pos0')
        pos0
        f1 = l(1).*cos(theta0(1)) + l(2).*cos(theta0(1) + theta0(2)) -pos(1);
        f2 = l(1).*sin(theta0(1)) + l(2).*sin(theta0(1) + theta0(2)) -pos(2);   
        f=[f1;f2]
        disp('new pos0')
        f
        s = J\-f
        theta0 = theta0 + s'
        
        k = k+1;
    end
    theta = theta0;

end 
    

