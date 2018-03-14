function v = countGL( im )
    if nargin == 0
        disp('Please specify image matrix')
        v = [];
        return
    elseif ~isa(im,'uint8')
        disp('Image matrix must be of type uint8')
        v = [];
        return
    else
        v=[];
        for p = 1:256
            s= size(im(im==(p-1)));
            v(1,p) = s(1);
        end
    end
    return 