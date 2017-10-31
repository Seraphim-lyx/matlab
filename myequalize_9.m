function im2 = myequalize_9(im)
%this function implements the histogram equalization algorithm 

    if ~isa(im,'uint8') %check type of im is uint8
        disp('Image matrix must be of type uint8')
        im2 = [];
        return
    else
        DM=255; %define max number of gray level
        [rows,cols] = size(im);
        A0=rows*cols; %total number of pixels of im
        for r =1:rows
            for c = 1:cols
                pixel=im(r,c);
                im2(r,c)=(DM/A0)* length(im(im<=pixel)); % Cumulative sum of pixel
            end
        end
        im2 = uint8(im2);
    end
return