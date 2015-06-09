#Dataquest.io
#Which airline is delayed the most?

#Reducing sum loops to formula's

def column_number_from_name(column_name):
    column_number = None
    for i, column in enumerate(column_names):
        if column == column_name:
            column_number = i
    return column_number

def column_sum(column_name):
    column_sum = 0
    for row in flight_delays:
        data = float(row[column_number_from_name(column_name)])
        column_sum += data
    return column_sum

average_weather_delay_time = column_sum("weather_delay")/column_sum("arr_del15")