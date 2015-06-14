#Ggvis - Interactive plots introduction 

#Datacamp
#Datacamp - ggvis
#Datacamp - ggvis - Grammar of graphics

faithful %>% 
  ggvis(~waiting, ~eruptions, fillOpacity := 0.5, 
        shape := input_select(label = "Choose shape:", 
                              choices = c("circle", "square", "cross", "diamond", 
                                          "triangle-up", "triangle-down"))) %>% 
  layer_points()

#Second parameter "fill" added
faithful %>% 
  ggvis(~waiting, ~eruptions, fillOpacity := 0.5, 
        shape := input_select(label = "Choose shape:", 
                              choices = c("circle", "square", "cross", 
                                          "diamond", "triangle-up", "triangle-down")), 
        fill := input_select(label = "Choose color:", 
                             choices = c("black", "red", "blue", "green"))) %>% 
  layer_points()


mtcars %>% 
  ggvis(~mpg, ~wt, 
        fill := input_radiobuttons(label = "Choose color:", 
                                   choices = c("black", "red", "blue", "green"))) %>% 
    layer_points()


#Free text field to be filled in

mtcars %>% 
  ggvis(~mpg, ~wt, 
        fill := input_text(label = "Choose color:", 
                           value = "black")) %>% 
  layer_points()

#Variable as Fill selector

mtcars %>% 
  ggvis(~mpg, ~wt, 
        fill = input_select(label = "Choose fill variable:", 
                            choices = names(mtcars), map = as.name)) %>% 
  layer_points()

#histograms - Free bucket field

mtcars %>% 
  ggvis(~mpg) %>% 
  layer_histograms(width = input_numeric(label = "Choose a binwidth:", value = 1))

#histograms - Slider

mtcars %>% 
  ggvis(~mpg) %>% 
  layer_histograms(width = input_slider(label = "Choose a binwidth:", min = 1, max = 20))
