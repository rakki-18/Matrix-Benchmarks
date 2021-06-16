Class {
	#name : #MBGaussianEliminationTest,
	#superclass : #MBAbstractTest,
	#category : #'Matrix-Benchmarks-Tests'
}

{ #category : #accessing }
MBGaussianEliminationTest >> classname [
	^ MBGaussianElimination 
]

{ #category : #tests }
MBGaussianEliminationTest >> test [

	self testRunAll.
]
