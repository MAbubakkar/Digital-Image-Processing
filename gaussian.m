function w = gaussian(A)

 B=rgb2gray(A);
         
    C=imnoise(B,'salt & pepper',0.02);   
    
E = fspecial('Gaussian',[9 9],1.76);

GaussF = imfilter(C,E);

figure,imshow(GaussF);

w=wiener2(C,[5 5]);

figure,imshow(w);title('After applying Weiner filter');
end