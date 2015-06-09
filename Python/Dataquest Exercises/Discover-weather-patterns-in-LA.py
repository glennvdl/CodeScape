#Reconstructed code from dataquest.io - Turning partials in a single comprehensive overview

# Our weather column, minus the header, is assigned to the weather variable.
weather_counts = {}
for item in weather:
    if item in weather_counts:
        weather_counts[item] = weather_counts[item] + 1
    else:
        weather_counts[item] = 1
print(weather_counts)