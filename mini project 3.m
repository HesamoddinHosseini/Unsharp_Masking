
% Project Title: Filtering operations in the frequency domain
% Author: Hesamoddin Hosseini
% Contact: hesamoddin.hosseini@mail.um.ac.ir
% Websit:http://hesamoddin.hosseini.student.um.ac.ir

clear;
%read images
Im132 = imread('D:/Im132.png');

BoxFilterAverage = [1/9, 1/9, 1/9;...
                    1/9, 1/9, 1/9;...
                    1/9, 1/9, 1/9];
                
Im132_zp = padarray(Im132, [4 4]);
[Im132_zp_row_size, Im132_zp_col_size] = size(Im132_zp);

figure;
subplot(2,2,1), imshow(Im132_zp); title('Original Image');

Im132_zp_smooth = uint8(zeros(Im132_zp_row_size, Im132_zp_col_size));

for row=1:Im132_zp_row_size-8
    for col=1:Im132_zp_col_size-8
        Im132_zp_smooth(row+4, col+4) = masking(Im132_zp, row+4, col+4, 3, BoxFilterAverage);
    end
end

subplot(2,2,2), imshow(Im132_zp_smooth); title('Blur Image');

Im132_zp_edges = uint8(zeros(Im132_zp_row_size, Im132_zp_col_size));

for row=1:Im132_zp_row_size
    for col=1:Im132_zp_col_size
        Im132_zp_edges(row, col) = Im132_zp(row, col) - Im132_zp_smooth(row, col);
    end
end

subplot(2,2,3), imshow(Im132_zp_edges .* 80); title('Edges');

Im132_zp_sharp = uint8(zeros(Im132_zp_row_size, Im132_zp_col_size));

for row=1:Im132_zp_row_size
    for col=1:Im132_zp_col_size
        Im132_zp_sharp(row, col) = Im132_zp(row, col) + Im132_zp_edges(row, col);
    end
end

subplot(2,2,4), imshow(Im132_zp_sharp); title('Sharp Image');

%----------------------------------------------------------------

Im132 = imread('D:/Im132.png');

BoxFilterAverage = [1/16, 2/16, 1/16;...
                    2/16, 4/16, 2/16;...
                    1/16, 2/16, 1/16];
                
Im132_zp = padarray(Im132, [4 4]);
[Im132_zp_row_size, Im132_zp_col_size] = size(Im132_zp);

figure;
subplot(2,2,1), imshow(Im132_zp); title('Original Image');

Im132_zp_smooth = uint8(zeros(Im132_zp_row_size, Im132_zp_col_size));

for row=1:Im132_zp_row_size-8
    for col=1:Im132_zp_col_size-8
        Im132_zp_smooth(row+4, col+4) = masking(Im132_zp, row+4, col+4, 3, BoxFilterAverage);
    end
end

subplot(2,2,2), imshow(Im132_zp_smooth); title('Blur Image');

Im132_zp_edges = uint8(zeros(Im132_zp_row_size, Im132_zp_col_size));

for row=1:Im132_zp_row_size
    for col=1:Im132_zp_col_size
        Im132_zp_edges(row, col) = Im132_zp(row, col) - Im132_zp_smooth(row, col);
    end
end

subplot(2,2,3), imshow(Im132_zp_edges .* 80); title('Edges');

Im132_zp_sharp = uint8(zeros(Im132_zp_row_size, Im132_zp_col_size));

for row=1:Im132_zp_row_size
    for col=1:Im132_zp_col_size
        Im132_zp_sharp(row, col) = Im132_zp(row, col) + Im132_zp_edges(row, col);
    end
end

subplot(2,2,4), imshow(Im132_zp_sharp); title('Sharp Image');
%----------------------------------------------------------------

Im132 = imread('D:/Im132.png');

BoxFilterAverage = [1/25, 1/25, 1/25, 1/25, 1/25;...
                    1/25, 1/25, 1/25, 1/25, 1/25;...
                    1/25, 1/25, 1/25, 1/25, 1/25;...
                    1/25, 1/25, 1/25, 1/25, 1/25;...
                    1/25, 1/25, 1/25, 1/25, 1/25];
                
Im132_zp = padarray(Im132, [4 4]);
[Im132_zp_row_size, Im132_zp_col_size] = size(Im132_zp);

figure;
subplot(2,2,1), imshow(Im132_zp); title('Original Image');

Im132_zp_smooth = uint8(zeros(Im132_zp_row_size, Im132_zp_col_size));

for row=1:Im132_zp_row_size-8
    for col=1:Im132_zp_col_size-8
        Im132_zp_smooth(row+4, col+4) = masking(Im132_zp, row+4, col+4, 5, BoxFilterAverage);
    end
end

subplot(2,2,2), imshow(Im132_zp_smooth); title('Blur Image');

Im132_zp_edges = uint8(zeros(Im132_zp_row_size, Im132_zp_col_size));

for row=1:Im132_zp_row_size
    for col=1:Im132_zp_col_size
        Im132_zp_edges(row, col) = Im132_zp(row, col) - Im132_zp_smooth(row, col);
    end
end

subplot(2,2,3), imshow(Im132_zp_edges .* 80); title('Edges');

Im132_zp_sharp = uint8(zeros(Im132_zp_row_size, Im132_zp_col_size));

for row=1:Im132_zp_row_size
    for col=1:Im132_zp_col_size
        Im132_zp_sharp(row, col) = Im132_zp(row, col) + Im132_zp_edges(row, col);
    end
end

subplot(2,2,4), imshow(Im132_zp_sharp); title('Sharp Image');

%----------------------------------------------------------------

Im132 = imread('D:/Im132.png');

BoxFilterAverage = [1/49, 1/49, 1/49, 1/49, 1/49, 1/49, 1/49;...
                    1/49, 1/49, 1/49, 1/49, 1/49, 1/49, 1/49;...
                    1/49, 1/49, 1/49, 1/49, 1/49, 1/49, 1/49;...
                    1/49, 1/49, 1/49, 1/49, 1/49, 1/49, 1/49;...
                    1/49, 1/49, 1/49, 1/49, 1/49, 1/49, 1/49;...
                    1/49, 1/49, 1/49, 1/49, 1/49, 1/49, 1/49;...
                    1/49, 1/49, 1/49, 1/49, 1/49, 1/49, 1/49];
                
Im132_zp = padarray(Im132, [4 4]);
[Im132_zp_row_size, Im132_zp_col_size] = size(Im132_zp);

figure;
subplot(2,2,1), imshow(Im132_zp); title('Original Image');

Im132_zp_smooth = uint8(zeros(Im132_zp_row_size, Im132_zp_col_size));

for row=1:Im132_zp_row_size-8
    for col=1:Im132_zp_col_size-8
        Im132_zp_smooth(row+4, col+4) = masking(Im132_zp, row+4, col+4, 7, BoxFilterAverage);
    end
end

subplot(2,2,2), imshow(Im132_zp_smooth); title('Blur Image');

Im132_zp_edges = uint8(zeros(Im132_zp_row_size, Im132_zp_col_size));

for row=1:Im132_zp_row_size
    for col=1:Im132_zp_col_size
        Im132_zp_edges(row, col) = Im132_zp(row, col) - Im132_zp_smooth(row, col);
    end
end

subplot(2,2,3), imshow(Im132_zp_edges .* 80); title('Edges');

Im132_zp_sharp = uint8(zeros(Im132_zp_row_size, Im132_zp_col_size));

for row=1:Im132_zp_row_size
    for col=1:Im132_zp_col_size
        Im132_zp_sharp(row, col) = Im132_zp(row, col) + Im132_zp_edges(row, col);
    end
end

subplot(2,2,4), imshow(Im132_zp_sharp); title('Sharp Image');

%----------------------------------------------------------------

Im132 = imread('D:/Im132.png');

BoxFilterAverage = [1/81, 1/81, 1/81, 1/81, 1/81, 1/81, 1/81, 1/81, 1/81;...
                    1/81, 1/81, 1/81, 1/81, 1/81, 1/81, 1/81, 1/81, 1/81;...
                    1/81, 1/81, 1/81, 1/81, 1/81, 1/81, 1/81, 1/81, 1/81;...
                    1/81, 1/81, 1/81, 1/81, 1/81, 1/81, 1/81, 1/81, 1/81;...
                    1/81, 1/81, 1/81, 1/81, 1/81, 1/81, 1/81, 1/81, 1/81;...
                    1/81, 1/81, 1/81, 1/81, 1/81, 1/81, 1/81, 1/81, 1/81;...
                    1/81, 1/81, 1/81, 1/81, 1/81, 1/81, 1/81, 1/81, 1/81;...
                    1/81, 1/81, 1/81, 1/81, 1/81, 1/81, 1/81, 1/81, 1/81;...
                    1/81, 1/81, 1/81, 1/81, 1/81, 1/81, 1/81, 1/81, 1/81];
                
Im132_zp = padarray(Im132, [4 4]);
[Im132_zp_row_size, Im132_zp_col_size] = size(Im132_zp);

figure;
subplot(2,2,1), imshow(Im132_zp); title('Original Image');

Im132_zp_smooth = uint8(zeros(Im132_zp_row_size, Im132_zp_col_size));

for row=1:Im132_zp_row_size-8
    for col=1:Im132_zp_col_size-8
        Im132_zp_smooth(row+4, col+4) = masking(Im132_zp, row+4, col+4, 9, BoxFilterAverage);
    end
end

subplot(2,2,2), imshow(Im132_zp_smooth); title('Blur Image');

Im132_zp_edges = uint8(zeros(Im132_zp_row_size, Im132_zp_col_size));

for row=1:Im132_zp_row_size
    for col=1:Im132_zp_col_size
        Im132_zp_edges(row, col) = Im132_zp(row, col) - Im132_zp_smooth(row, col);
    end
end

subplot(2,2,3), imshow(Im132_zp_edges .* 80); title('Edges');

Im132_zp_sharp = uint8(zeros(Im132_zp_row_size, Im132_zp_col_size));

for row=1:Im132_zp_row_size
    for col=1:Im132_zp_col_size
        Im132_zp_sharp(row, col) = Im132_zp(row, col) + Im132_zp_edges(row, col);
    end
end

subplot(2,2,4), imshow(Im132_zp_sharp); title('Sharp Image');

%----------------------------------------------------------------

Im132 = imread('D:/Im132.png');
      
Im132_zp = padarray(Im132, [4 4]);
[Im132_zp_row_size, Im132_zp_col_size] = size(Im132_zp);

figure;
subplot(2,2,1), imshow(Im132_zp); title('Original Image');

Im132_zp_smooth = uint8(zeros(Im132_zp_row_size, Im132_zp_col_size));

mask = zeros(9);

for row=5:Im132_zp_row_size-8
    for col=5:Im132_zp_col_size-8
        i = 1;
        for mask_row = row-1:row+1
            for mask_col=col-1:col+1
                mask(i) = Im132_zp(mask_row, mask_col);
                i = i + 1;
            end
        end
        mask=sort(mask);
        Im132_zp_smooth(row+4, col+4) = mask(5);
    end
end

subplot(2,2,2), imshow(Im132_zp_smooth); title('Blur Image');

Im132_zp_edges = uint8(zeros(Im132_zp_row_size, Im132_zp_col_size));

for row=1:Im132_zp_row_size
    for col=1:Im132_zp_col_size
        Im132_zp_edges(row, col) = Im132_zp(row, col) - Im132_zp_smooth(row, col);
    end
end

subplot(2,2,3), imshow(Im132_zp_edges .* 80); title('Edges');

Im132_zp_sharp = uint8(zeros(Im132_zp_row_size, Im132_zp_col_size));

for row=1:Im132_zp_row_size
    for col=1:Im132_zp_col_size
        Im132_zp_sharp(row, col) = Im132_zp(row, col) + Im132_zp_edges(row, col);
    end
end

subplot(2,2,4), imshow(Im132_zp_sharp); title('Sharp Image');
%----------------------------------------------------------------

Im132 = imread('D:/Im132.png');
Im133 = imread('D:/Im133.png');
Im134 = imread('D:/Im134.png');

BoxFilterLaplacian = [	-1/16, -2/16, -1/16;...
						-2/16, 12/16, -2/16;...
						-1/16, -2/16, -1/16];

BoxFilterLaplacianAdaptive = cat( 3,  [0, 0, 0; ...
                                    -2/16, 2/16, 0; ...
                                    0, 0, 0 ...
                                    ], ...
                                    [-1/16, 0, 0; ...
                                     0, 1/16, 0; ...
                                     0, 0, 0 ...
                                     ], ...
                                     [0, -2/16, 0;...
                                      0, 2/16, 0;...
                                      0, 0, 0 ...
                                      ], ...
                                        [0, 0, -1/16;...
                                         0, 1/16, 0;...
                                         0, 0, 0 ...
                                         ], ...
                                        [0, 0, 0;...
                                        0, 2/16, -2/16;...
                                        0, 0, 0 ...
                                        ], ...
                                        [0, 0, 0;...
                                        0, 1/16, 0;...
                                        0, 0, -1/16 ...
                                        ], ...
                                        [0, 0, 0;...
                                        0, 2/16, 0;...
                                        0, -2/16, 0 ...
                                        ], ...
                                        [0, 0, 0;...
                                        0, 1/16, 0;...
                                        -1/16, 0, 0 ]);                
                
Im132_zp = padarray(Im132, [4 4]);
Im133_zp = padarray(Im133, [4 4]);
Im134_zp = padarray(Im134, [4 4]);

[Im132_zp_row_size, Im132_zp_col_size] = size(Im132_zp);
[Im133_zp_row_size, Im133_zp_col_size] = size(Im133_zp);
[Im134_zp_row_size, Im134_zp_col_size] = size(Im134_zp);

Im132_zp_edges = uint8(zeros(Im132_zp_row_size, Im132_zp_col_size));

for row=1:Im132_zp_row_size-8
    for col=1:Im132_zp_col_size-8
        Im132_zp_edges(row+4, col+4) = masking(Im132_zp, row+4, col+4, 3, BoxFilterLaplacian);
    end
end

Im133_zp_edges = uint8(zeros(Im133_zp_row_size, Im133_zp_col_size));

for row=1:Im133_zp_row_size-8
    for col=1:Im133_zp_col_size-8
        Im133_zp_edges(row+4, col+4) = masking(Im133_zp, row+4, col+4, 3, BoxFilterLaplacian);
    end
end

Im134_zp_edges = uint8(zeros(Im134_zp_row_size, Im134_zp_col_size));

for row=1:Im134_zp_row_size-8
    for col=1:Im134_zp_col_size-8
        Im134_zp_edges(row+4, col+4) = masking(Im134_zp, row+4, col+4, 3, BoxFilterLaplacian);
    end
end

Im132_zp_sharp = uint8(zeros(Im132_zp_row_size, Im132_zp_col_size));

for row=1:Im132_zp_row_size
    for col=1:Im132_zp_col_size
        Im132_zp_sharp(row, col) = Im132_zp(row, col) + Im132_zp_edges(row, col)*10;
    end
end

Im133_zp_sharp = uint8(zeros(Im133_zp_row_size, Im133_zp_col_size));

for row=1:Im133_zp_row_size
    for col=1:Im133_zp_col_size
        Im133_zp_sharp(row, col) = Im133_zp(row, col) + Im133_zp_edges(row, col)*10;
    end
end

Im134_zp_sharp = uint8(zeros(Im134_zp_row_size, Im134_zp_col_size));

for row=1:Im134_zp_row_size
    for col=1:Im134_zp_col_size
        Im134_zp_sharp(row, col) = Im134_zp(row, col) + Im134_zp_edges(row, col)*10;
    end
end

threshold = 1;

Im132_zp_edges_Adaptive = uint8(zeros(Im132_zp_row_size, Im132_zp_col_size));

for row=1:Im132_zp_row_size-8
    for col=1:Im132_zp_col_size-8
        
        sum = 0;
        for mask_number = 1:8
            mask = BoxFilterLaplacianAdaptive(:,:,mask_number);
             temp = masking(Im132_zp, row+4, col+4, 3, mask);
             
             if temp >= threshold
                 sum = sum + temp;
             end
        end
        Im132_zp_edges_Adaptive(row+4, col+4) = sum;
    end
end

Im132_zp_sharp_Adaptive = uint8(zeros(Im132_zp_row_size, Im132_zp_col_size));

for row=1:Im132_zp_row_size
    for col=1:Im132_zp_col_size
        Im132_zp_sharp_Adaptive(row, col) = Im132_zp(row, col) + Im132_zp_edges_Adaptive(row, col)*10;
    end
end

Im133_zp_edges_Adaptive = uint8(zeros(Im133_zp_row_size, Im133_zp_col_size));

for row=1:Im133_zp_row_size-8
    for col=1:Im133_zp_col_size-8
        
        sum = 0;
        for mask_number = 1:8
            mask = BoxFilterLaplacianAdaptive(:,:,mask_number);
             temp = masking(Im133_zp, row+4, col+4, 3, mask);
             
             if temp >= threshold
                 sum = sum + temp;
             end
        end
        Im133_zp_edges_Adaptive(row+4, col+4) = sum;
    end
end

Im133_zp_sharp_Adaptive = uint8(zeros(Im133_zp_row_size, Im133_zp_col_size));

for row=1:Im133_zp_row_size
    for col=1:Im133_zp_col_size
        Im133_zp_sharp_Adaptive(row, col) = Im133_zp(row, col) + Im133_zp_edges_Adaptive(row, col)*10;
    end
end

Im134_zp_edges_Adaptive = uint8(zeros(Im134_zp_row_size, Im134_zp_col_size));

for row=1:Im134_zp_row_size-8
    for col=1:Im134_zp_col_size-8
        
        sum = 0;
        for mask_number = 1:8
            mask = BoxFilterLaplacianAdaptive(:,:,mask_number);
             temp = masking(Im134_zp, row+4, col+4, 3, mask);
             
             if temp >= threshold
                 sum = sum + temp;
             end
        end
        Im134_zp_edges_Adaptive(row+4, col+4) = sum;
    end
end

Im134_zp_sharp_Adaptive = uint8(zeros(Im134_zp_row_size, Im134_zp_col_size));

for row=1:Im134_zp_row_size
    for col=1:Im134_zp_col_size
        Im134_zp_sharp_Adaptive(row, col) = Im134_zp(row, col) + Im134_zp_edges_Adaptive(row, col)*10;
    end
end

figure
subplot(2,3,1), imshow(Im132_zp); title('a');
subplot(2,3,2), imshow(Im132_zp_edges*40); title('b');
subplot(2,3,3), imshow(Im132_zp_sharp); title('c');
subplot(2,3,5), imshow(Im132_zp_edges_Adaptive*40); title('d');
subplot(2,3,6), imshow(Im132_zp_sharp_Adaptive); title('e');

figure
subplot(2,3,1), imshow(Im133_zp); title('a');
subplot(2,3,2), imshow(Im133_zp_edges*40); title('b');
subplot(2,3,3), imshow(Im133_zp_sharp); title('c');
subplot(2,3,5), imshow(Im133_zp_edges_Adaptive*40); title('d');
subplot(2,3,6), imshow(Im133_zp_sharp_Adaptive); title('e');

figure
subplot(2,3,1), imshow(Im134_zp); title('a');
subplot(2,3,2), imshow(Im134_zp_edges*40); title('b');
subplot(2,3,3), imshow(Im134_zp_sharp); title('c');
subplot(2,3,5), imshow(Im134_zp_edges_Adaptive*40); title('d');
subplot(2,3,6), imshow(Im134_zp_sharp_Adaptive); title('e');
