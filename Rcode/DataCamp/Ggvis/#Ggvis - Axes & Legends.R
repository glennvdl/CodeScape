#Ggvis - Axes & Legends

#Datacamp
#Datacamp - ggvis
#Datacamp - ggvis - Grammar of graphics

#example
faithful %>% 
  ggvis(~waiting, ~eruptions) %>% 
  layer_points() %>% 
  add_axis("y", title = "Duration of eruption (m)") %>%
  add_axis("x", title = "Time since previous eruption (m)")

#example
faithful %>% 
  ggvis(~waiting, ~eruptions) %>% 
  layer_points() %>% 
  add_axis("y", title = "Duration of eruption (m)", 
          values = c(2, 3, 4, 5), subdivide = 9) %>% 
  add_axis("x", title = "Time since previous eruption (m)", values = c(50,60,70,80,90), subdivide = 9)

#example
faithful %>% 
  ggvis(~waiting, ~eruptions) %>% 
  layer_points() %>%
  add_axis ("y", orient = "right") %>%
  add_axis("x", orient = "top")

#example
faithful %>% 
  ggvis(~waiting, ~eruptions, opacity := 0.6, 
        fill = ~factor(round(eruptions))) %>% 
  layer_points() %>% 
  add_legend("fill", title = "~ duration (m)", orient = "left")

#example
faithful %>% 
  ggvis(~waiting, ~eruptions, opacity := 0.6, 
        fill = ~factor(round(eruptions)), shape = ~factor(round(eruptions)), 
        size = ~round(eruptions)) %>% 
    layer_points() %>% 
    add_legend(c("fill", "shape", "size"), 
               title = "~ duration (m)", values = c(2, 3, 4, 5))

#example (Combining different legends)
    faithful %>% 
  ggvis(~waiting, ~eruptions, opacity := 0.6, 
        fill = ~factor(round(eruptions)), shape = ~factor(round(eruptions)), 
        size = ~round(eruptions))  %>%
  layer_points() %>%
  add_legend(c("fill","shape","size"), 
  				title = "~duration (m)", values = c(2,3,4,5))


