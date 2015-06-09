#Reconstructed code from dataquest.io - Turning partials in a single comprehensive overview

#Load the file
f = open("legislators.csv", "r")
csvreader = csv.reader(f)
legislators = list(csvreader)

#Clean missing gender values - Replacing them by "M"
for item in legislators:
    if item[3] == "":
        item[3] = "M"

#Create birth year column
birth_years = []
for row in legislators:
    year = row[2].split("-")
    birth_years.append(year[0])


#Create birth year column in legislators data set
for i, row in enumerate(legislators):
    row.append(birth_years[i])

#Replace values that can't be transformed into integers to 0
for row in legislators:
    try:
        row[7] = int(row[7])
    except:
        row[7] = 0

#Replace the 0 values in year by the year in the previous element (elements are ordered by birthyear in the dataset)
for row in legislators:
    if row[7] == 0:
        row[7] = previous_value
    else:
    	#Note: In this case the first row in legislators can not be 0!
        previous_value = row[7]

#Create dictionary for female legislators as of 1940 + the counts
female_name_counts = {}

for row in legislators:
    if row[3] == "F" and row[7] > 1940:
        name = row[1]
        if name in female_name_counts:
            female_name_counts[name] += 1
        else:
            female_name_counts[name] = 1

#Find out what the maximum amount of times is that a name is found
max_value = None
for k in female_name_counts:
    if max_value is None or female_name_counts[k] > max_value:
        max_value = female_name_counts[k]
#The result or this set is 2 - Which explains the following steps

#Find all female names that occur 2 times (give previous conditions (>1940)) + store them in top_female_names
top_female_names = []
for name in female_name_counts:
    if female_name_counts[name] == 2:
        top_female_names.append(name)
