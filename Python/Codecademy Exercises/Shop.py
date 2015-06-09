#Codecademy

shopping_list = ["banana", "orange", "apple"]

#stock list of items in stock
stock = {
    "banana": 6,
    "apple": 0,
    "orange": 32,
    "pear": 15
}

#stock list of item prices    
prices = {
    "banana": 4,
    "apple": 2,
    "orange": 1.5,
    "pear": 3
}

#compute bill + validate if product is available + update stock list after item is sold
def compute_bill(food):
    total = 0
    for x in food:
        if stock[x] > 0:
            y = prices[x]
            total = total + y
            stock[x] = stock[x] - 1
    return total
        