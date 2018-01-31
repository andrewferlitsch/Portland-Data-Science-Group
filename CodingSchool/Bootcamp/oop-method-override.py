class DoughFactory:
	""" Super (Base) Class for Dough Factory """
	
	def get_dough(self):
		""" DoughFactory implements a method for get_dough """
		print("Dough Factory")
		
class OrganicFactory(DoughFactory):
	""" Sub (Derived) Class that inherits from Dough Factory """
	
	def get_dough(self):
		""" OrganicFactory overrides the implementation (replaces it) 
			of super (base) class DoughFactory's get_dough() method.
		"""
		print("Organic Dough")
		
class Pizza(OrganicFactory):
	def orderSpeciality(self):
		# This will call the get_dough() method implemented by Pizza class
		self.get_dough()
		
	def orderOrganic(self):
		# This will call the get_dough() method implemented by the top-level inherited class (OrganicFactory)
		super().get_dough()
		
	def orderPlain(self):
		# This wll call the get_dough() method implemented by the named inherited class (Dough Factory)
		DoughFactory().get_dough()
		
	def get_dough(self):
		print("Specialty Dough")
		
my_order = Pizza()
my_order.orderSpeciality()
my_order.orderOrganic()
my_order.orderPlain()