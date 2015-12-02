% Abdullah Alghamdi 
% part1 Q3

%Note: check function "fn"
function [theta]=invKin2D(l,theta0,pos,n, mode) 

% Newton's Method
if mode==0
    k=0;
    while k<n
        
       [pos0,J]=evalRobot2D(l,theta0);
       
       % check if we are close from the desired position
        if abs(norm(pos -pos0)) < 0.00005
            disp('now they are almost equal')
           break
        end
        
     % from Heath's book
        f=fn(theta0,l,pos);
        s = J\-f;
        theta0 = theta0 + s;
        
        k = k+1;
    end
    theta = theta0;
end 

% Broyden's method 
if mode==1
    k=0;
    [pos0,B]=evalRobot2D(l,theta0);
    while k<n
        
        % check if we are close from the desired position
        if abs(norm(pos -pos0)) < 0.00005
            disp('now they are almost equal')
           break
        end
        % From Heath's book 
        fun=fn(theta0,l,pos);
        s = B\-fun;
        x = theta0 + s
        y = fn(x,l,pos) - fn(theta0,l,pos);
        B = B + ((y - B*s)*s')/(s'*s);
        
        [pos0,J]=evalRobot2D(l,x);
        theta0=x;
        
        k = k+1;
        if k==n
            display(n,' iterations are done')
            break
        end
    end
    theta = theta0;
end
    

