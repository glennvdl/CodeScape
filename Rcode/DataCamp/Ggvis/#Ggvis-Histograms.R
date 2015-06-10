#Ggvis histograms

#Datacamp
#Datacamp - ggvis
#Datacamp - ggvis - Grammar of graphics

faithful %>% ggvis(~waiting) %>% layer_histograms(width = waiting)

# Transform the code below: just compute the bins instead of plotting a histogram.
faithful %>% compute_bin(~waiting, width = 5)

# Combine the solution to the first challenge with layer_rects() to build a histogram.
faithful %>% 
  compute_bin(~waiting, width = 5) %>% 
  ggvis(x = ~xmin_, x2 = ~xmax_, y = 0, y2 = ~count_) %>% 
  layer_rects()