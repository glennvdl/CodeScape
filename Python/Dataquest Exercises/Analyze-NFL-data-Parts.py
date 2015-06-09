#Reconstructed code from dataquest.io - Turning partials in a single comprehensive overview

#Read csv file
f = open("nfl.csv", "r")
csvreader = csv.reader(f)
nfl = list(csvreader)

#How many times did patriots win?
patriots_wins = 0
for item in nfl:
    if item[2] == "New England Patriots":
        patriots_wins += 1
print(patriots_wins)

#Creating a formula that could calculate this for any team
def wins (string):
    total_wins = 0
    for item in nfl:
        if item[2] == string:
            total_wins += 1
    return total_wins