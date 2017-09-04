function [ isPast ] = isPastThresh(image, x, y)
%UNTITLED4 Summary of this function goes here
%   Detailed explanation goes here
 array = impixel(image, x, y);
 val = graythresh(image)*255;
 %val = 100;
 if array(1)<= val && array(1)> (val - val*.33)
     isPast = .2;
 elseif array(1) <= (val - val*.33) && array(1) > (val - val*.66)
     isPast = .5;
 else if array(1) <= (val - val*.66)
     isPast = 1;
 else 
     isPast = 0; 
 end 
end

