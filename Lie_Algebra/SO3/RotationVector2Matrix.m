% 罗德里格斯公式  Rodrigues()
% 功能同Matlab自带 rotationVectorToMatrix(), 反之 rotationMatrixToVector() （差一个负号)
% so3 --> SO3 指数映射
% 注意vec为3*1的向量
function Rotation_matrix = RotationVector2Matrix(rot_vec)

r = rot_vec;
theta = norm(r);
one_r = r./theta;

rx = [0 -one_r(3) one_r(2);
      one_r(3) 0 -one_r(1);
      -one_r(2) one_r(1) 0];
  
Rotation_matrix = cos(theta)*eye(3,3) + (1-cos(theta))*(one_r*one_r') + sin(theta)*rx;

end