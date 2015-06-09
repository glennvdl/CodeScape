#Dataquest.io
#Which airline is delayed the most?

#Calculate the percentage of delayed flights

def column_number_from_name(column_name):
    column_number = None
    for i, column in enumerate(column_names):
        if column == column_name:
            column_number = i
    return column_number

# Get the column number of the arr_flight column
# This column counts the total number of arriving flights for a carrier in a given airport
arr_flights_column = column_number_from_name("arr_flights")

# Extract all of the values in the column using a list comprehension
# We need to convert the values to float because they are strings initially
arr_flights = [float(row[arr_flights_column]) for row in flight_delays]

# Now we can use the sum() function to add together all of the values.
total_arriving_flights = sum(arr_flights)

arr_del15 = 0
for row in flight_delays:
    data = float(row[7])
    arr_del15 += data

delayed_percentage = arr_del15/total_arriving_flights
print(delayed_percentage)
    

