#Coursera P4E
name = raw_input("Enter file:")
if len(name) < 1 : name = "mbox-short.txt"
handle = open(name)

#Identify the correct "From" terminology
times = []
for line in handle:
    line = line.rstrip()
    if line.startswith("From"):
        words = line.split()
        try:
            times.append(words[5])
        except:
            continue

#Isolate hours only
hours=[]
for time in times:
    hours.append(time[0:2])

#Count the number of times an hour appears
counts = dict()
for hour in hours:
    counts[hour] = counts.get(hour,0)+1

#Create a list (because this can be sorted!)
lst = list()
for key, val in counts.items():
    lst.append((key,val))
lst.sort()

#Print
for k,v in lst:
    print k,v
