function im22=equalize(im)

DM=255;
N=prod(size(im));
counts =imhist(im);
disp('Image matrix must be of type uint8')
f=(DM/N)*cumsum(counts);
f=round(f);
f=uint8(f);

im22=f(double(im)+1);