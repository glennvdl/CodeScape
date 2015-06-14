#Ggvis - Adding layers - Advanced

#Datacamp
#Datacamp - ggvis
#Datacamp - ggvis - Grammar of graphics

#Customizing property mappings 

#examples
mtcars %>% 
  ggvis(~wt, ~mpg, fill = ~disp, stroke = ~disp, strokeWidth := 2) %>%
  layer_points() %>%
  scale_numeric("fill", range = c("red", "yellow"))%>%
  scale_numeric("stroke", range = c("darkred", "orange"))


mtcars %>% ggvis(~wt, ~mpg, fill = ~hp) %>%
  layer_points() %>%
  scale_numeric("fill", range = c("green","beige"))


mtcars %>% ggvis(~wt, ~mpg, fill = ~factor(cyl)) %>%
  layer_points() %>%
  scale_nominal("fill", range = c("purple","blue","green"))


mtcars %>% ggvis(x = ~wt, y = ~mpg, fill = ~factor(cyl), opacity = ~hp) %>%
  layer_points() %>%
  scale_numeric("opacity", range = c(0.2, 1))


mtcars %>% ggvis(~wt, ~mpg, fill = ~disp) %>%
  layer_points() %>%
  scale_numeric("y", domain = c(0, NA)) %>%
  scale_numeric("x", domain = c(0,6))
