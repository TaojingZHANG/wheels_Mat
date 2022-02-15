% so3 数值求导计算方法 小扰动法求jacobian
function J_matrix = Diff_jacobian(rot_vec, pos, delta_rank)
delta = eps*10^delta_rank; %eps:浮点相对精度
vec1 = rot_vec;
J_matrix = zeros(3,3);

delta_ = [delta;0;0];
J_matrix(:,1) = (RotationVector2Matrix(delta_)*RotationVector2Matrix(vec1)*pos - RotationVector2Matrix(vec1)*pos)./delta;

delta_ = [0;delta;0];
J_matrix(:,2) = (RotationVector2Matrix(delta_)*RotationVector2Matrix(vec1)*pos - RotationVector2Matrix(vec1)*pos)./delta;

delta_ = [0;0;delta];
J_matrix(:,3) = (RotationVector2Matrix(delta_)*RotationVector2Matrix(vec1)*pos - RotationVector2Matrix(vec1)*pos)./delta;

end

