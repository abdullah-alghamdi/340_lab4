
k=[1, 2, 3, 4, 5, 6, 7, 8]
pk=[0.19, 0.36, 0.69, 1.3, 2.5, 4.7, 8.5, 14]
x = [0.1;0.1]

%x(1) = r , and x(2) = P0

for i =1:1:20
    J = [k(:).*x(1).^(k(:)-1)*x(2), x(1).^k(:)]
    r = [pk(:) - (x(1).^(k(:)))*x(2)]

    s = J\-r
    x = x+s
    norm(r)


end

