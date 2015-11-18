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

if mode==1
    k=0;
    [pos0,B]=evalRobot2D(l,theta0);
    while k<n
      
        if abs(pos' -pos0) < [0.00005;0.00005]
            disp('now they are almost equal')
           break
        end
        
        
        fun=f(theta0,l,pos)
        s = B\-fun
        x = theta0 + s'
        y = f(x,l,pos) - f(theta0,l,pos)
        B = B + ((y - B*s)*s')/(s'*s)
        
        [pos0,J]=evalRobot2D(l,x)
        
        k = k+1;
    end
    theta = theta0;
end
    

