#Ggvis bars

#Datacamp
#Datacamp - ggvis
#Datacamp - ggvis - Grammar of graphics

# Complete the code to plot a bar graph of the cyl factor.
mtcars %>% ggvis(~factor(cyl)) %>% layer_bars()

# Adapt the solution to the first challenge to just calculate the count values. No plotting!
mtcars %>% compute_count(~factor(cyl))