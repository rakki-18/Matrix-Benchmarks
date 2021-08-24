Class {
	#name : #MBAbstractTest,
	#superclass : #TestCase,
	#category : #'Matrix-Benchmarks-Tests'
}

{ #category : #tests }
MBAbstractTest >> testRunAll [

	"initialize with a small matrix size so that tests don't take too much time.
	Matrix size is a power of 2 so that strassen multiplication test can work."
	
	"tests are valid only for the subclasses of MBAbstractTest"
	self class = MBAbstractTest ifFalse: [  
		self shouldnt: [self classname runBenchmarks: 32] raise: Error
	]


]
