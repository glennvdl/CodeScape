#Coursera PR4E by Dr Chuck

largest = None
smallest = None
while True:
    num = raw_input("Enter a number: ")
    if num == "done" : break
    
    try:
        x = float(num)
    except:
        print("Invalid input")
        continue
    if largest is None:
        largest = num
    elif num > largest:
        largest = num
    
    if smallest is None:
        smallest = num
    elif num < smallest:
        smallest = num

print "Maximum is", largest
print "Minimum is", smallest