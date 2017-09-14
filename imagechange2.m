function id = imagechange2(img, x)
x=x/100;
j = imadjust(img, stretchlim(img), [x 1-x]);
id = imshow(j);