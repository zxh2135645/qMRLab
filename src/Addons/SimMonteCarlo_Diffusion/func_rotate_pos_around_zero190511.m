function [pos2] = func_rotate_pos_around_zero190511(pos1, theta)

% 入力座標を原点中心にtheta回転させた座標を出力する(XY平面)

% 【入力系】
%   pos1 -> 入力の座標. size(pos1) = [1,2]
%   theta -> 回転する角度(radian). 定数
% 【出力系】
%   pos2 -> 出力の座標. size(pos2) = [1,2]

    matrix = [cos(theta), -sin(theta); sin(theta), cos(theta)];
    pos2 = (matrix * pos1(:))';
    