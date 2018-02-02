import pytest
import unittest

# Import the classes to test
from stack_linkedlist import Node, Stack

class StackTests(unittest.TestCase):
	def test_1a(self):
		""" Create a Node """
		n = Node(1)
		self.assertEqual( n.value, 1 )
		self.assertEqual( n.next, None )
		
	def test_1b(self):
		""" Node Value Getter/Setter for Value """
		n = Node(1)
		n.value = 2
		self.assertEqual( n.value, 2 )
		
	def test_1c(self):
		""" Node Value Getter/Setter for Next """
		n1 = Node(1)
		n2 = Node(2)
		n1.next = n2
		self.assertEqual( n1.next, n2 )
		
	def test_2a(self):
		""" Create a stack """
		s = Stack()
		self.assertEqual( s.top, None )
		self.assertEqual( len(s), 0 )
		
	def test_2b(self):
		""" Push: empty stack """
		s = Stack()
		n = Node(1)
		s.push( n )
		self.assertEqual( s.top, n )
		self.assertEqual( len(s), 1 )
		pass
		
	def test_2c(self):
		""" Push: single node stack """
		s = Stack()
		n1 = Node(1)
		s.push( n1 )
		n2 = Node(2)
		s.push( n2 )
		self.assertEqual( s.top, n2 )
		self.assertEqual( len(s), 2 )
		
	def test_2d(self):
		""" Push: multi-node stack """
		s = Stack()
		n1 = Node(1)
		s.push( n1 )
		n2 = Node(2)
		s.push( n2 )
		n3 = Node(3)
		s.push( n3 )
		self.assertEqual( s.top, n3 )
		self.assertEqual( len(s), 3 )
		pass
		
	def test_3a(self):
		""" Pop: empty stack """
		s = Stack()
		n = s.pop()
		self.assertEqual( n, None )
		self.assertEqual( s.top, None )
		self.assertEqual( len(s), 0 )
		pass
		
	def test_3b(self):
		""" Pop: single node stack """
		s = Stack()
		n1 = Node(1)
		s.push( n1 )
		n = s.pop()
		self.assertEqual( n, n1 )
		self.assertEqual( s.top, None )
		self.assertEqual( len(s), 0 )
		
	def test_3c(self):
		""" Pop: multi-node stack """
		s = Stack()
		n1 = Node(1)
		s.push( n1 )
		n2 = Node(2)
		s.push( n2 )
		n = s.pop()
		self.assertEqual( n, n2 )
		self.assertEqual( s.top, n1 )
		self.assertEqual( len(s), 1 )
		