
class Wheel(object):
	""" Defines a Wheel """
	size = 0
	
	def __init__(self, size):
		""" size of the wheel in inches """
		self.size = size
		
	def wheelSize(self,size):
		""" size of the wheel in inches """
		self.size = size
		
	def getWheelSize(self):
		return self.size
		
	def whiteWalls(self, hasit):
		""" whether the tire has whitewalls """
		self.white_wall = hasit
		
class Engine(object):
	""" Defines an Engine """
	
	type = "Gasoline"
	def __init__(self, size):
		""" engine size in liters """
		self.size = size
		
	def engineType( self, type ):
		""" engine type: diesel or gasoline """
		self.type = type
		
class Chassis(object):
	""" Composition 
		A Chassis consists of steering wheel, engine (composition) and wheels (omposition)
	"""
	steering = "power-steering"

	def __init__(self, steering):
		self.steering = steering
		self.wheels = Wheel(12)
		self.engine = Engine(3)
		
		
	def Passenger(self):
		self.wheels.wheelSize(13)
		
	def Truck(self):
		self.wheels.wheelSize(15)
		
	def Mini(self):
		self.wheels.wheelSize(12)
				
chassis1 = Chassis("manual")
chassis1.Passenger()
print("STEERING: ", chassis1.steering)
print("WHEEL SIZE: ", chassis1.wheels.getWheelSize())

chassis2 = Chassis("manual")
chassis2.Truck()
print("STEERING: ", chassis2.steering)
print("WHEEL SIZE: ", chassis2.wheels.getWheelSize())

chassis3 = Chassis("manual")
print("STEERING: ", chassis3.steering)
print("WHEEL SIZE: ", chassis3.wheels.getWheelSize())
		

		