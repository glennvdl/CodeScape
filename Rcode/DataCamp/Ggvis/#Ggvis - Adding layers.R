#Ggvis - Adding layers

#Datacamp
#Datacamp - ggvis
#Datacamp - ggvis - Grammar of graphics

#Adding layers
pressure %>% 
  ggvis(~temperature, ~pressure, stroke := "skyblue") %>% 
  layer_lines() %>% 
  layer_points()

#Layered settings
pressure %>% 
  ggvis(~temperature, ~pressure, stroke := "skyblue") %>% 
  layer_lines(stroke:= "purple") %>% 
  layer_points()

# Extended example
pressure %>% 
  ggvis(~temperature, ~pressure, stroke := "skyblue", 
        strokeOpacity := 0.5, strokeWidth := 5) %>% 
  layer_lines() %>% 
  layer_points(fill = ~temperature, shape := "triangle-up", size := 300)

# Create a graph containing a scatterplot, a linear model and a smooth line.
pressure %>% ggvis(~temperature, ~pressure) %>% 
   layer_points() %>%
   layer_lines(opacity:= 0.5)%>%
   layer_model_predictions(model = "lm", stroke:= "navy")%>%
   layer_smooths(stroke:="skyblue")
