# create shopping class
class shopping:
    def __init__(self, name, price, inventory ):
        self.name = name
        self.price = price
        self.inventory = inventory
    
    # create select product function
    def add_to_cart(self, name):
        print(f"continue to payment: {self.name}.")

    # create payment funtion
    def payment(self):
        print(f"the price for procuct {self.name} is {self.price}.")

    # create inventory in stock
    def stock(self, amount):
        self.inventory -= amount
        if self.inventory > 0:
            print(f"current inventory: {self.inventory}")
        else:
            print("out of stock")

# use shopping class
# create products
product1 = shopping("milk", 10, 40)
product2 = shopping("egg", 10, 20)
product3 = shopping("bread", 5, 30)

# select product
product1.add_to_cart("milk")

# payment product
product2.payment()

# check stock
product3.stock(2)

# create customer class
class customer:
    def __init__(self, customerid, name, address, phonenumber, point):
        self.customerid = customerid
        self.name = name
        self.address = address
        self.phonenumber = phonenumber
        self.point = point

    # create checkpoint function
    def checkpoint(self):
        print(f"customer name : {self.name}, the totel point: {self.point}")

# use customer class
# create customer
customer1 = customer(1, "Jett", "Bkk", "+6600000000", 100)
customer2 = customer(2, "Reyna", "London", "+6611111111", 150)

# check point
customer1.checkpoint()

# create orders class
class orders:
    def __init__(self, orderid, name, price):
        self.orderid = orderid
        self.name = name
        self.price = price

    # create total price function, the price total is price * quantity 
    def total(self, quantity):
       return f"the total price for order {self.name}: {self.price * quantity} $"

# use order class
# create orders
order1 = orders(1, "milk", 10)
order2 = orders(2, "egg", 15)

# calculates the total price
order1.total(5)
