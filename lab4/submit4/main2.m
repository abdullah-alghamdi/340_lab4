% Abdullah Alghamdi 
% run part2 

addpath /cshome/vis/data
load('human_data.mat')
%load 'walk1.mat'
%load 'walk2.mat'
load 'jump1.mat'
%load 'walk3.mat'

%load 'walk4.mat'
%load 'walk5.mat'
%load 'walk6.mat'
 %legl=bothlegs(1:4) %7 8 9 16
 %legr=bothlegs(5:8) % 10 11 12 17
 thetaL=[pi/8;0;0;pi/7];
 thetaR=[pi/9;.003;pi/7;pi/8];

 robot3D('new')
 
for j=1:4
 for i=1:size(L,2)

     
     thetaL=invKin3D(Ml,thetaL,L(:,i));
     thetaR=invKin3D(Mr,thetaR,R(:,i));
     d=[thetaL;thetaR];
     new =humanInterp(drad,d);
     robot3D(new);
     %pause(0.5)
 end
end
 