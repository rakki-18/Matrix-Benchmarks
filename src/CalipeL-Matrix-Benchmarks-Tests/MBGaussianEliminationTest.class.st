Class {
	#name : #MBGaussianEliminationTest,
	#superclass : #MBAbstractTest,
	#category : #'CalipeL-Matrix-Benchmarks-Tests'
}

{ #category : #accessing }
MBGaussianEliminationTest >> classname [
	^ MBGaussianElimination 
]

{ #category : #tests }
MBGaussianEliminationTest >> test [

	self testRunAll.
]
