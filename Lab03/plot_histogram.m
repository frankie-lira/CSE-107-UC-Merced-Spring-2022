function plot_histogram (h)
%{
  plot_histogram    Plot the histogram that have x-axis ranging from 0 to 255 and y-axis ranging from
                     0 to its max value. And plot the graph in bar graph form.

%}
  
  
  [t,s] = size(h);
  
  x = 0:s-1;
  
%Get Max
  t = max(h);
  
  bar(x,h);
  
  set(gca, 'Xtick', 0:50:256)
  
  
%Set limits
  xlim([0 s])
  ylim([0 t])
  
%Label
  xlabel('Intensity Values');
  ylabel('PMF');


end