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

delays_by_carrier = {}

carrier_column = column_number_from_name("carrier")
carriers = [row[carrier_column] for row in flight_delays]
unique_carriers = list(set(carriers))

for carrier in unique_carriers:
    delays_by_carrier[carrier] = find_average_delay(carrier)

#OR -------------------------------------------------------------------------------------------

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


delays_by_carrier = {}
unique_carriers = []
carrier_column = column_number_from_name("carrier")
for row in flight_delays:
    unique_carriers.append(row[carrier_column])
unique_carriers = list(set(unique_carriers))
print(unique_carriers)

for item in unique_carriers:
    delays_by_carrier[item] = find_average_delay(item)