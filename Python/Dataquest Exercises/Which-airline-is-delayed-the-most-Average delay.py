#Dataquest.io
#Which airline is delayed the most?

#Calculate the average delay time (+ experimenting with shortly written loops)

def column_number_from_name(column_name):
    column_number = None
    for i, column in enumerate(column_names):
        if column == column_name:
            column_number = i
    return column_number

average_delay_time = None

#Experimenting with shortly written loops
arr_delay_column = column_number_from_name("arr_delay")
arr_delay_flights = [float(row[arr_delay_column]) for row in flight_delays]
arr_delay_flights_sum = sum(arr_delay_flights)

#Experimenting with shortly written loops
arr_del15_column = column_number_from_name("arr_del15")
arr_del15_flights = [float(row[arr_del15_column]) for row in flight_delays]
arr_del15_flights_sum = sum(arr_del15_flights)

average_delay_time = arr_delay_flights_sum / arr_del15_flights_sum
print(average_delay_time)