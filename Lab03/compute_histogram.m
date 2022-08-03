function [h] = compute_histogram (Matrix)
%{
  
%}

  
  %R = Row
  %C = Column
  [R,C] = size(Matrix);
  
  h = zeros(1,256);
  
  %Get the count for each pixel intensity value
  for i = 1:R
    for j = 1:C
        k = Matrix(i,j);
        k = k + 1;
        h(k) = h(k) + 1;
      
    end
  end
  
  %Sum up the count and divide for histogram computation
  m = 0;
  for k = 1:256
    m = m + h(k);
  end
  
  h = h/m;
  
%{
  disp("Error Checking")
  a = 0;
  for i = 1:256
    a = a + h(i);
  end
  disp(a);
  disp("If the result is not 1, then something is wrong");
%}

end