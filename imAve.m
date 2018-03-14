function im2 = imAve(fname, M)
im = imread(fname);
[rows, cols] = size(im);
im2 = zeros(rows, cols);

for i = 1:M
    im2 = im2 + double(imnoise(im, 'gaussian'));
end
im2 = im2/M;
im2 = uint8(im2);
return