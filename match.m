function im2 = match(im, h)
im2= [];
cum = cumsum(h);
[row,col] = size(im);
DM=255;
A0=row*col;


m = round((DM/A0)*cum);
m = uint8(m);
disp(m)
for i = 1:row
    for j = 1:col
        p=uint16(im(i,j))+1;
        im2(i,j) = m(p);
    end
end
im2 = uint8(im2);

