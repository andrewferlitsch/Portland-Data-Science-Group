import pytest
import unittest

# Import the classes to test
from queue_linkedlist import Node, Queue

class QueueTests(unittest.TestCase):
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
		""" Create a queue """
		q = Queue()
		self.assertEqual( q.front, None )
		self.assertEqual( len(q), 0 )
		
	def test_2b(self):
		""" Enqueue: empty queue """
		q = Queue()
		n = Node(1)
		q.enqueue(n)
		self.assertEqual( q.front, n )
		self.assertEqual( len(q), 1 )
		pass
		
	def test_2c(self):
		""" Enqueue: single node stack """
		q = Queue()
		n1 = Node(1)
		q.enqueue(n1)
		n2 = Node(2)
		q.enqueue(n2)
		self.assertEqual( q.front, n1 )
		self.assertEqual( len(q), 2 )
		
	def test_2d(self):
		""" Enqueue: multi-node stack """
		q = Queue()
		n1 = Node(1)
		q.enqueue(n1)
		n2 = Node(2)
		q.enqueue(n2)
		n3 = Node(2)
		q.enqueue(n3)
		self.assertEqual( q.front, n1 )
		self.assertEqual( len(q), 3 )
		
	def test_3a(self):
		""" Dequeue: empty stack """
		q = Queue()
		n = q.dequeue()
		self.assertEqual( n, None )
		self.assertEqual( q.front, None )
		self.assertEqual( len(q), 0 )
		pass
		
	def test_3b(self):
		""" Dequeue: single node stack """
		q = Queue()
		n1 = Node(1)
		q.enqueue(n1)
		n = q.dequeue()
		self.assertEqual( n, n1 )
		self.assertEqual( q.front, None )
		self.assertEqual( len(q), 0 )
		
	def test_3c(self):
		""" Dequeue: multi-node stack """
		q = Queue()
		n1 = Node(1)
		q.enqueue(n1)
		n2 = Node(2)
		q.enqueue(n2)
		n = q.dequeue()
		self.assertEqual( n, n1 )
		self.assertEqual( q.front, n2 )
		self.assertEqual( len(q), 1 )
		