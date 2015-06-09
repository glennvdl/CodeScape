#Reconstructed code from dataquest.io - Turning partials in a single comprehensive overview

# legislators has been loaded in.

male_names_counts = {}

#Filter on "M" and 1940 + append to male_names_counts
for row in legislators:
    if row[3] == "M" and row[7] > 1940:
        name = row[1]
        if name in male_names_counts:
            male_names_counts[name] += 1
        else:
            male_names_counts[name] = 1
    print (male_names_counts)

#What is the maximum number of times a name occurs?
max_value = None
for k, v in male_names_counts.items():
    if max_value is None or v > max_value:
        max_value = v
print(max_value)
# = 25

#Generate list of names that occur 35 times
top_male_names = []
for k,v in male_names_counts.items():
    if v == 35:
        top_male_names.append(k)
print(top_male_names)