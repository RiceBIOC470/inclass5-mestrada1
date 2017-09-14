function id = imagechange3(img, x)
if ~exist('x' , 'var')
    x=1;
end
x=x/100;
j = imadjust(img, stretchlim(img), [x 1-x]);
id = imshow(j);