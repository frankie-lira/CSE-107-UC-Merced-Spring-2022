function [Magn] = gradient_magnitude (Matrix)

  %Sobel Masks
    %Sx = Gx of Sobel masks
    %Sy = Gy of Sobel masks
  Sx = [-1, -2, -1; 0, 0, 0; 1 2 1];
  Sy = [-1 0 1; -2 0 2; -1 0 1];
  
  Gx = spatial_filter(Matrix, Sx);
  Gy = spatial_filter(Matrix, Sy);
  
  [R, C] = size(Matrix);
  
  Magn = zeros(R,C);
  
  for i = 1:R
    for j = 1:C
      
      Magn(i,j) = sqrt(Gx(i,j)^2 + Gy(i,j)^2);
      
    end
  end

endfunction
