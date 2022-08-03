function [Output] = find_edges (Matrix, Thresh)

  Output = gradient_magnitude(Matrix);
  
  [R,C] = size(Output);
  
  for i = 1:R
      for j = 1:C
          if(Output(i,j) < Thresh)
              Output(i,j) = 0;
          
          else Output(i,j) = 255;
              
              endif
          end
      end
      
      Output = uint8(Output);
      
      endfunction
