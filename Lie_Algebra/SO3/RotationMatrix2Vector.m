% 功能同Matlab自带 rotationMatrixToVector(), 反之 rotationVectorToMatrix() （差一个负号)
% SO3 --> so3 对数映射 每个SO3都能找到对应1个so3，但可能多个不同so3对应同1个SO3
% 注意vec为3*1的向量
% 验证：RotationMatrix2Vector(RotationVector2Matrix([1.5;0;0])) = [1.5;0;0]
function Rotation_vector = RotationMatrix2Vector(rot_mat)

theta = acos((trace(rot_mat)-1.0)*0.5);
R = rot_mat;
rx = (R-R')./2.0./sin(theta); % <<十四讲>>P69 把exp(\phi ^ 泰勒展开)
a1 = (rx(3,2)-rx(2,3))*0.5;
a2 = (rx(1,3)-rx(3,1))*0.5;
a3 = (rx(2,1)-rx(1,2))*0.5;
Rotation_vector = [theta*a1;theta*a2;theta*a3];

end