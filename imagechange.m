function id = imagechange(img)
j = imadjust(img, stretchlim(img), [0.01 0.99]);
id = imshow(j);