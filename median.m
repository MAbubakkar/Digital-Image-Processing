function D = median(A)
    B=rgb2gray(A);
         
    C=imnoise(B,'salt & pepper',0.016);   
    
    D=medfilt2(C);

   % figure;imshow(A);title('Input Image');
    figure;imshow(B);title('Gray Image');
    figure;imshow(C);title('Noisy Image');
    figure;imshow(D);title('Filtered Image');
end

