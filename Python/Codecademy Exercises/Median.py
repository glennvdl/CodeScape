#Codecademy median

def median(numbers):
    new_list = sorted(numbers)
#First path - One!    
    if len(new_list) == 1:
        return new_list[0]
        
#Second path - Even!        
    elif len(new_list)%2==0:
        item1 = len(new_list)/2
        item12 = item1 - 1
        median_value1 = new_list[item1] + new_list[item12]
        return median_value1/2.0
        
#Third path - Uneven!    
    else:
        item2 = len(new_list)/2.0 - 0.5
        item22 = int(item2)
        return new_list[item22]
        
        