function v = countGL_9(im)
%this function first checks whether input im is type uint8
%then count the gray level if im is uint8

%clear all;
%clc;


[rows,columns]=size(im);

if rows>=columns
    a=rows;
else
    a=columns;
end

v=linspace(0,0,a);

 if nargin>0
     if isa(im, 'uint8')
         
         for row=1:rows
            for col=1:columns
                grayLevel = im(row,col); % Get the gray level.
                grayLevel=grayLevel+1; 
                v(1,grayLevel) = v(1,grayLevel) + 1;% Add 1 because graylevel zero goes into index 1 and so on.
            end
         end
     
     else
        fprintf('Image matrix must be of type uint8');
        v=[];
        return
     end
     
 else
     fprintf('Please specify image matrix');
     v=[];
     return
 end