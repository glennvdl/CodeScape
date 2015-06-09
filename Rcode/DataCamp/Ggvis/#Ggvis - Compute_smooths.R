#ggvis - Compute_smooths

#Datacamp
#Datacamp - ggvis
#Datacamp - ggvis - Grammar of graphics

# Compute the x and y coordinates for a loess smooth line that predicts mpg with the wt
mtcars %>% compute_smooth(mpg ~wt, method = "lm")
#compute_smooth(Y value ~ X value, method)

# Use 'ggvis()' and 'layer_lines()' to plot the results of compute smooth
mtcars %>% compute_smooth(mpg ~ wt) %>% ggvis(~pred_, ~resp_) %>% layer_lines()
# pred_ & resp_ are being generated in the compute_smooth model

# Recreate the graph you coded above with 'ggvis()' and 'layer_smooths()' - Creates same graph (switch wt & mpg)
mtcars %>% ggvis(~wt, ~mpg) %>% layer_smooths()

# Extend the code for the second plot and add 'layer_points()' to the graph
mtcars %>% ggvis(~wt, ~mpg) %>% layer_smooths () %>% layer_points()
