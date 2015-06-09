#Exercise by Codecademy.org
"""Goal = experiment with functions by creating a function that calculates the prices based on 3 variables spread over 3 functions"""

#Hotel costs
def hotel_cost(nights):
    return 140*nights

#Plane costs
def plane_ride_cost(city):
    if city == "Charlotte":
        return 183
    elif city == "Tampa":
        return 220
    elif city == "Pittsburgh":
        return 222
    elif city == "Los Angeles":
        return 475
    
#Rental car costs
def rental_car_cost(days):
    cost = 40 * days
    if days >= 7:
        cost -= 50
    elif days >= 3:
        cost -= 20
    return cost

#Pulling it together
def trip_cost(city,days,spending_money):
    return rental_car_cost(days) + hotel_cost(days) + plane_ride_cost(city) + spending_money
    
