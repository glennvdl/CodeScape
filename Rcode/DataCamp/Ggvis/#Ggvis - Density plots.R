#Ggvis density plots

#Datacamp
#Datacamp - ggvis
#Datacamp - ggvis - Grammar of graphics

# Combine compute_density() with layer_lines() to make a density plot of the waiting variable.
faithful %>% compute_density(~waiting) %>% ggvis(~pred_, ~resp_) %>% layer_lines()

# Build a density plot directly using layer_densities. Use the correct variables and properties.
faithful %>% ggvis(~waiting, fill:= "green") %>% layer_densities()

