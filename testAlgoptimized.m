function [image2] = testAlgoptimized(image1, color, num)
%image processing algorithm
%   reads image, converts to black and white, and creates a new image with
%   the same dimensions to be the image returned by the program
image1 = rgb2gray(image1);
[height, width] = size(image1);
image2 = ones(height, width);
%{ar = [];
x = 0; 
y = 0;
c= color;
n = num;
%graythresh is another MATLAB function; it uses the Otsu algorithm to seperate
%the forground from the background of the image according to value
imshow(image2);
if n == 1
while x < width 
    while y < height
        if c == [0, 0, 0]
            array = impixel(image1, x, y);
            if isPastThresh(image1, x, y)  == 1
                centerX = x - 1;
                centerY = y - 1;
                hold on
                %rectangle function in MATLAB draws a shape on the blank
                %image, and I set it so it would draw a circle
                rectangle('Position',[centerX, centerY, 2, 2],...
                'Curvature',[1,1],...
                'FaceColor', c, 'Edgecolor', c);
                y = y+(height*.01*rand(1,1));
            elseif isPastThresh(image1, x, y) == .5
                centerX = x - 1;
                centerY = y - 1;
                hold on
                rectangle('Position',[centerX, centerY, 2, 2],...
                'Curvature',[1,1],...
                'FaceColor', c, 'Edgecolor', c);
            %algorithm to space the points depending on the darkness of the
            %color there. The y value increases depending on a ratio of the height by a 
            %random number, allowing the dots to be spaced mostly evenly
            %without always increasing by the same amount and creating
            %"striped" effects on the image
                y = y+(height*.02*rand(1,1));
            elseif isPastThresh(image1, x, y) == .2
                centerX = x -1;
                centerY = y -1;
                hold on
                rectangle('Position',[centerX, centerY, 2, 2],...
                'Curvature',[1,1],...
                'FaceColor', c, 'Edgecolor', c);
                y = y+((height*.02)+height*.03*rand(1,1));
            else 
                y = y+(height*.01)*rand(1,1);
            end 
            
        else
            if isPastThresh(image1, x, y) == 1
                centerX = x -1;
                centerY = y -1;
                hold on
                rectangle('Position',[centerX, centerY, 2, 2],...
                'Curvature',[1,1],...
                'FaceColor', c, 'Edgecolor', c);
                y = y+(height*.01*rand(1,1));
            elseif isPastThresh(image1, x, y) == .5
                centerX = x -1;
                centerY = y -1;
                hold on
                rectangle('Position',[centerX, centerY, 2, 2],...
                'Curvature',[1,1],...
                'FaceColor', c, 'Edgecolor', c);
                y = y+(height*.02*rand(1,1));
            elseif isPastThresh (image1, x, y) == .2
                centerX = x -1;
                centerY = y -1;
                hold on
                rectangle('Position',[centerX, centerY, 2, 2],...
                'Curvature',[1,1],...
                'FaceColor', c, 'Edgecolor', c);
                y = y+((height*.02)+height*.03*rand(1,1));
            else 
                 y = y+(height*.01)*rand(1,1);
            end 
        end
    end 
    x = x+1; 
    y = 0; 
end  
else 
    while x < width 
    while y < height
        if c == [0, 0, 0]
            array = impixel(image1, x, y);
            if isPastThresh(image1, x, y)  == 1
                centerX = x -1;
                centerY = y -1;
                hold on
                rectangle('Position',[centerX, centerY, 2, 2],...
                'Curvature',[1,1],...
                'FaceColor', c, 'Edgecolor', c);
                y = y+(height*.01*rand(1,1));
            elseif isPastThresh(image1, x, y) == .5
                centerX = x -1;
                centerY = y -1;
                hold on
                rectangle('Position',[centerX, centerY, 2, 2],...
                'Curvature',[1,1],...
                'FaceColor', c, 'Edgecolor', c);
                y = y+(height*.02*rand(1,1));
            elseif isPastThresh(image1, x, y) == .2
                centerX = x -1;
                centerY = y -1;
                c2 = [.5, .5, .5];
                hold on
                rectangle('Position',[centerX, centerY, 2, 2],...
                'Curvature',[1,1],...
                'FaceColor', c2, 'Edgecolor', c2);
                y = y+((height*.02)+height*.03*rand(1,1));
            else 
                y = y+(height*.01)*rand(1,1);
            end 
            
        else
            if isPastThresh(image1, x, y) == 1
                centerX = x -1;
                centerY = y -1;
                hold on
                rectangle('Position',[centerX, centerY, 2, 2],...
                'Curvature',[1,1],...
                'FaceColor', .5*c, 'Edgecolor', .5*c);
                y = y+(height*.01*rand(1,1));
            elseif isPastThresh(image1, x, y) == .5
                 centerX = x -1;
                centerY = y -1;
                hold on
                rectangle('Position',[centerX, centerY, 2, 2],...
                'Curvature',[1,1],...
                'FaceColor', .5*c, 'Edgecolor', .5*c);
                 y = y+(height*.02*rand(1,1));
            elseif isPastThresh (image1, x, y) == .2
                centerX = x -1;
                centerY = y -1;
                hold on
                rectangle('Position',[centerX, centerY, 2, 2],...
                'Curvature',[1,1],...
                'FaceColor', c, 'Edgecolor', c);
                y = y+((height*.02)+height*.03*rand(1,1));
            else 
                y = y+(height*.01)*rand(1,1);
            end 
        end
    end 
    x = x+1; 
    y = 0; 
    end  

end
imshow(image2);
savefig(fig1, 'newimage.png');
end

