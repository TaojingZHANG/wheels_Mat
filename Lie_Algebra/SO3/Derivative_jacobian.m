% so3 解析法求导  <十四讲>P75 
function J_matrix = Derivative_jacobian(rot_vec,pos)

J_matrix = -skew_matrix(RotationVector2Matrix(rot_vec)*pos);


end

function skew_mat = skew_matrix(vec_n)
skew_mat=[0 -vec_n(3) vec_n(2);
          vec_n(3) 0  -vec_n(1);
          -vec_n(2) vec_n(1) 0];
end
