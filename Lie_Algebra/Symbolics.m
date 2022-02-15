% syms x y vx vy %定义符号变量
% ss=jacobian([sqrt(x^2+y^2), atan(y/x),(x*vx + y*vy)/(sqrt(x^2+y^2))], [x; y; vx;vy]);
% simplify(ss)
% 
% 

syms roll pitch yaw x y z
Rx = [1 0 0 ; 0 cos(yaw) -sin(yaw) ; 0 sin(yaw) cos(yaw)]
Ry = [cos(pitch) 0 sin(pitch) ; 0 1 0 ; -sin(pitch) 0 cos(pitch)]
Rz = [cos(roll) -sin(roll) 0 ; sin(roll) cos(roll) 0 ; 0 0 1]

R = Rz*Ry*Rx;
t = [x;y;z];

% ja=jacobian(R*t,[roll;pitch;yaw])
% simplify(ja)