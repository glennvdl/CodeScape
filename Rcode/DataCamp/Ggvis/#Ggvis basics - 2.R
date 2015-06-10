#ggvis basics - 2 - Sampe codes

#Datacamp
#Datacamp - ggvis
#Datacamp - ggvis - Grammar of graphics

# Change the second line of code to set the fills using pressure$black
pressure$black <- c("black", "grey80", "grey50", 
                    "navyblue", "blue", "springgreen4", 
                    "green4", "green", "yellowgreen", 
                    "yellow", "orange", "darkorange", 
                    "orangered", "red", "magenta", "violet", 
                    "purple", "purple4", "slateblue")
pressure %>% 
  ggvis(~temperature, ~pressure, 
        fill := ~black) %>% 
  layer_points()

# Plot the faithful data as described in the second instruction
faithful %>% 
  ggvis(~waiting, ~eruptions, 
        size = ~eruptions, opacity := 0.5, 
        fill := "blue", stroke := "black") %>% 
  layer_points()

# Plot the faithful data as described in the third instruction
faithful %>% 
  ggvis(~waiting, ~eruptions, 
        fillOpacity = ~eruptions, size := 100,  
        fill := "red", stroke := "red", shape:= "cross" ) %>% 
  layer_points()
