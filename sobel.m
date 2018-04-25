    function BW = sobel(A)
    %B=imread('F:\Study\Study Softwares\MatLab install pack\bin\nature31.jpg');
    size(A);
    B=rgb2gray(A);
    BW = edge(B,'sobel',0.1) ;
    imshow(BW);title('After applying Sobel filter');
    end