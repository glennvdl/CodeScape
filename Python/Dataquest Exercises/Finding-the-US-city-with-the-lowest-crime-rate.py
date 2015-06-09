#Reconstructed code from dataquest.io - Turning partials in a single comprehensive overview

f = open('crime_rates.csv', 'r')
data = f.read()
rows = data.split('\n')
full_data = []
for row in rows:
    split_row = row.split(",")
    split_row[1] = int(split_row[1])
    full_data.append(split_row)

lowest_crime_rate = 10000
for item in full_data:
    if item[1] < 10000:
        lowest_crime_rate = item[1]
print(lowest_crime_rate)