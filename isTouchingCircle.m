function [isTrue] = isTouchingCircle(x, y, a)
%UNTITLED7 Summary of this function goes here
%   Detailed explanation goes here
if ismember([x,y], a)
    isTrue = 1;
else
    isTrue = 0; 
 

end

