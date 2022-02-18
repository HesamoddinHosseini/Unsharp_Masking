function output = masking(img, x, y, mask_size, mask)

    mask_offset = floor(mask_size/2);
    sum = 0;
    for row = 1 : mask_size
        for col = 1 : mask_size
            t = double(img(x - mask_offset - 1 + row, y - mask_offset - 1 + col));
            t = t * mask(row, col);
            sum = sum + t;
        end
    end
    output = sum;
end