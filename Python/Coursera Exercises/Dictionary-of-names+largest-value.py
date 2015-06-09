#Coursera P4E

#open file
fname = raw_input("Enter file name: ")
if len(fname) < 1 : fname = "mbox-short.txt"

fh = open(fname)
#adding fh.read() doesn't work, why?

#look for the appropriate lines and add the in a list
names = []
for line in fh:
    line = line.rstrip()
    if line.startswith("From:"):
        words = line.split()
        names.append(words[1])

#Create a dictionary
counts = {}

#Start counting names
for name in names:
    counts[name] = counts.get(name,0) + 1


#Loop to identify largest value + key
largest_value = None
largest_key = None
for k,v in counts.items():
    if largest_key is None or v > largest_value:
        largest_value = v
        largest_key = k

print largest_key, largest_value
    
    