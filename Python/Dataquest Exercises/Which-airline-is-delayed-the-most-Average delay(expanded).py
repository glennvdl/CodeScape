#Dataquest.io
#Which airline is delayed the most?

#Calculate the average delay time - Expanded

def column_number_from_name(column_name):
    column_number = None
    for i, column in enumerate(column_names):
        if column == column_name:
            column_number = i
    return column_number

def find_average_delay(carrier_name=None):
    total_delayed_flights = 0
    total_delay_time = 0
    delay_time_column = column_number_from_name("arr_delay")
    delay_number_column = column_number_from_name("arr_del15")
    carrier_column = column_number_from_name("carrier")
    for row in flight_delays:
        if carrier_name is None or row[carrier_column] == carrier_name:
            total_delayed_flights += float(row[delay_number_column])
            total_delay_time += float(row[delay_time_column])
    return total_delay_time / total_delayed_flights

average_delay_time = find_average_delay()
american_airlines_average_delay_time = find_average_delay("AA")