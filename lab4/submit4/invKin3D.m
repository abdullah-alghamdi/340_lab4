function theta0=invKin3D(M,theta,pos)
    tol = 1e-8;
    n1=150;
    theta0 = theta;
    c=0;
    n=0;
    dfr=1
    while dfr > tol && n<n1
        
      [pos0,J] = evalRobot3D(M,theta0);
  
        f = pos0-pos;
        s = J\-f;
        theta = theta0 + s;
        
        % check the difference between two consequent thetas
        df=theta-theta0;
        
        
        c1 = norm(df);
        
        % dfr is to measure the improvment of the difference between the
        % two consequent thetas after every iteration.( used as while loop
        % gard ) 
        dfr=abs(c1-c);
        
        
        theta0 = theta;
        c=c1;
        n=n+1;
    end
end 

