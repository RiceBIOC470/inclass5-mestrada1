%Inclass assignment 5. 

% 1. (a) Write a function that reads in an image and displays it so that 1%
% of the pixels are black and 1% of the pixels are white. Hint: your
% function can call the stretchlim function, see the help for that function.
% (b) Write a second function where the fraction of pixels to display as
% black or white are equal and can be specified as a second input to this
% function. (c) Redo part (b) but make the option to specify the fraction
% of black/white pixels optional with a default value of 1% if not
% specified. 

%(a). Function shown here and included in a separate file

img = imread('blackwhite.tiff');

function id = imagechange(img)
j = imadjust(img, stretchlim(img), [0.01 0.99]);
id = imshow(j);

%(b). Function shown here and included in a separate file

function id = imagechange2(img, x) 
x=x/100;
j = imadjust(img, stretchlim(img), [x 1-x]);
id = imshow(j);

%(c). Function shown here and included in a separate file

function id = imagechange3(img, x)
if ~exist('x' , 'var')
    x=1;
end
x=x/100;
j = imadjust(img, stretchlim(img), [x 1-x]);
id = imshow(j);

%2. Write a function to take the reverse complement of a DNA sequence, that
%is, returns the complementary base pair for each base, read from end
%to beginning. (e.g. the reverse compliment of ATGC is GCAT). Do not use the
%builtin MATLAB function for this. 

% Generate a random DNA sequence
N = 100;
DNAbases = randi(4,1,N);
x=1;
while x < N+1
    if DNAbases(x)==1;
        rand_seq(1,x) = ['A'];
    elseif DNAbases(x)==2;
        rand_seq(1,x) = ['T'];
    elseif DNAbases(x)==3;
        rand_seq(1,x) = ['G'];
    elseif DNAbases(x)==4;
        rand_seq(1,x) = ['C'];
    end
    x=x+1;
end

rand_seq

rand_seq =

    'CCACGATGCCACCTCATCCCGACCGCGTGAGATAACGTCATTCCATTGGCTGGAATCTGACTGGCCGAATCTCACTATGTTCGGCTCCTGAAGCCAGTAT'

% Function shown here below and included in a separate file

function output = revcomDNA(rand_seq)
for ii=1:length(rand_seq)
    if rand_seq(ii) == 'A';
       rand_seq(ii) = 'T';
    elseif rand_seq(ii) == 'T';
       rand_seq(ii) = 'A';
    elseif rand_seq(ii) == 'C';
       rand_seq(ii) = 'G';
    else rand_seq(ii) = 'C';
    end 
end
output = rand_seq;

revcomDNA(rand_seq)

ans =

    'GGTGCTACGGTGGAGTAGGGCTGGCGCACTCTATTGCAGTAAGGTAACCGACCTTAGACTGACCGGCTTAGAGTGATACAAGCCGAGGACTTCGGTCATA'
