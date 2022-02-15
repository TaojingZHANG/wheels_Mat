% 欧拉角转旋转矩阵（R_3*3）

function Rotation_matrix = Euler2Rotation(vec)

roll = vec(1);
pitch = vec(2);
yaw = vec(3);
Rx = [1 0 0 ; 0 cos(yaw) -sin(yaw) ; 0 sin(yaw) cos(yaw)];
Ry = [cos(pitch) 0 sin(pitch) ; 0 1 0 ; -sin(pitch) 0 cos(pitch)];
Rz = [cos(roll) -sin(roll) 0 ; sin(roll) cos(roll) 0 ; 0 0 1];
Rotation_matrix = Rz*Ry*Rx;

end