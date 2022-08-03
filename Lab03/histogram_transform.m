function [T] = histogram_transform(h)
%{


%}
  
  [R,C] = size(h);
  
  T = 1:256;
  
%Formula
  for i = 1:256
    G = 0;

    for j = 1:i

      G = G + h(1,j);
      
    end
    
    T(i) = [C-1]*G;
    
  end
  
  

end