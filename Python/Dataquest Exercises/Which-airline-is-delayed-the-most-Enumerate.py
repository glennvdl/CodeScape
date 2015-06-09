#Dataquest.io
#Which airline is delayed the most?

#Write a function that retrieves the column number based on the column name

def column_number_from_name(column_name):
    column_number = None
    for i, column in enumerate(column_names):
        if column == column_name:
            column_number = i
    return column_number

arr_delay = column_number_from_name("arr_delay")
weather_delay = column_number_from_name("weather_delay")