load('human_data.mat')

 new =humanInterp(drad,bothlegs');
 robot3D('new')

 for i=1:1:size(new)
     robot3D(new(i))
     pause(1)
 end
 