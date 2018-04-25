function blurred = laplacian(A)      
    F = fspecial('laplacian');
    blurred = imfilter(A,F);
    imshow(blurred); title('Edge detected Image')
end