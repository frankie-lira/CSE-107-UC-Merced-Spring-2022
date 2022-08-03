%% part 1
function [Output] = equalize(Image)


 %% part 2

  %Image = imread("Lab_03_image2_light.tif");
  %Image = imread("Lab_03_image1_dark.tif");
  Image = imread("Lab_03_image_original.tif");
  Matrix = Image;
  Original = Matrix;

%Display the mean and deviation
  disp('--Display the Mean and Deviation--')
  disp('')
  disp('-Displaying Original Image-')
  Original = double(Original);
  Original = Original(:);
  M = mean(Original);
  SD = std(Original);
  
  disp('Mean --')
  disp(M)
  
  disp('Standard Deviation --')
  disp(SD)
  
  disp('')
  disp('-Displaying Equalized Image-')
  Matrix = double(Matrix);
  Matrix = Matrix(:);
  
  M = mean(Matrix);
  SD = std(Matrix);
  
  disp('Mean --')
  disp(M)
  
  disp('Standard Deviation --')
  disp(SD)

end