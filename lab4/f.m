function [fun] = f(x,l,arg)
        f1 = l(1).*cos(x(1)) + l(2).*cos(x(1) + x(2)) -arg(1);
        f2 = l(1).*sin(x(1)) + l(2).*sin(x(1) + x(2)) -arg(2);   
        fun=[f1;f2]

end 