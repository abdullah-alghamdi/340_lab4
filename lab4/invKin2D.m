function [theta]=invKin2D(l,theta0,pos,n, mode) 


if mode==0
    k=0;
    while k<n
        
       [pos0,J]=evalRobot2D(l,theta0);
       
      pos'
      pos0
      pos'-pos0
      pause()
        if pos0 == pos'
           break
        end
            
        s = J\-pos0
        theta0 = theta0 + s'
        err= abs(pos' - pos0);
        k = k+1;
    end
    theta = theta0;

end 
    

