    function F = mean(A)

   G=imnoise(A,'gaussian',0.0005,0.0019);
   imshow(G);
   H = fspecial('average', 3);
   F=imfilter(G,H);
   imshow(F);title('After applying mean filter');
    end