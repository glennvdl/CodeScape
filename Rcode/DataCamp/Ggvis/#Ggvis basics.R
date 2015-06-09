#ggvis basics - Examples

#Datacamp
#Datacamp - ggvis
#Datacamp - ggvis - Grammar of graphics

#Data space or maps "=" versus Visual space or sets ":="


# Scatterplot
pressure %>% ggvis( ~temperature, ~pressure, fill := "red") %>% layer_points()

# Barplot
pressure %>% ggvis( ~temperature, ~pressure, fill := "red") %>% layer_bars()

# Lines
pressure %>% ggvis( ~temperature, ~pressure, fill := "red") %>% layer_lines()

# Map the fill property to the temperature variable
pressure %>% ggvis(~temperature, ~pressure, fill = ~temperature) %>% layer_points()

# Map the size property to the pressure variable
pressure %>% ggvis(~temperature, ~pressure, fill = ~temperature, size = ~pressure) %>% layer_points()

# Standard pipe operators     
faithful %>% ggvis(~waiting, ~eruptions) %>% layer_points()
# Equalts -> layer_points(ggvis(faithful, ~waiting, ~eruptions))

# Map the size property to the pressure variable
pressure %>% ggvis(~temperature, ~pressure, size = ~pressure ) %>% layer_points()

# Size property to 100 px
pressure %>% ggvis(~temperature, ~pressure, size := 100) %>% layer_points()

# Fill property to red
pressure %>% ggvis(~temperature, ~pressure, fill := "red") %>% layer_points()


