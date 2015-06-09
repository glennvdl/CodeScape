#Dataquet.io - Snippets

#import matplotlib
import matplotlib.pyplot as plt

#Create the dataset
month = [1,1,2,2,4,5,5,7,8,10,10,11,12]
temperature = [32,15,40,35,50,55,52,80,85,60,57,45,35]
#Draw the plot - scatterplot
plt.scatter(month, temperature)
plt.show()

#Example 2 - scatterplot
airline_trip_length = [100,500,200,800,300,100]
airline_trip_cost = [200,1000,500,3000,1000,300]
plt.scatter(airline_trip_length, airline_trip_cost)
plt.show()

#Linechart
#Sort - in order to draw lines from left to right
forest_fires = forest_fires.sort(["temp"])
plt.plot(forest_fires["temp"], forest_fires["area"])
plt.show()

#Example2 - Linechart
forest_fires = forest_fires.sort(["rain"])
plt.plot(forest_fires["rain"], forest_fires["area"])
plt.show()

#Example3 - Linechart
forest_fires = forest_fires.sort(["wind"])
plt.plot(forest_fires["wind"], forest_fires["area"])
plt.show()

#Adding labels and title
forest_fires = forest_fires.sort(["wind"])
plt.scatter(forest_fires["wind"], forest_fires["area"])
# Set the x axis label
plt.xlabel("Wind speed when fire started")
# Set the y axis label
plt.ylabel("Area consumed by fire")
# Set the title
plt.title("Wind speed vs fire area")
plt.show()

#Changing plot style
#Checking available styles
print(plt.style.available)
plt.style.use("fivethirtyeight")
plt.scatter(forest_fires["rain"], forest_fires["area"])
plt.show()

#Bar plot example
plt.bar(area_by_x.index, area_by_x)
plt.show()
