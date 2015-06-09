# Exercises on Codecademy.com

#1 - Add a key to inventory called 'pocket'
#2 - Set the value of 'pocket' to be a list consisting of the strings 'seashell', 'strange berry', and 'lint'
#3 - .sort() the items in the list stored under the 'backpack' key
#4 - Then .remove('dagger') from the list of items stored under the 'backpack' key
#5 - Add 50 to the number stored under the 'gold' key


inventory = {
    'gold' : 500,
    'pouch' : ['flint', 'twine', 'gemstone'], # Assigned a new list to 'pouch' key
    'backpack' : ['xylophone','dagger', 'bedroll','bread loaf']
}

# Adding a key 'burlap bag' and assigning a list to it
inventory['burlap bag'] = ['apple', 'small ruby', 'three-toed sloth']

# Sorting the list found under the key 'pouch'
inventory['pouch'].sort() 

# Your code here

# 1 + 2
inventory["pocket"] = ["seashell", "strange berry", "lint"]
# 3
inventory["backpack"].sort()
# 4
inventory["backpack"].remove("dagger")
# 5
inventory["gold"] +=50
