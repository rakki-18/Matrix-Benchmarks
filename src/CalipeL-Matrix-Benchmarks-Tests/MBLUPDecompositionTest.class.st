Class {
	#name : #MBLUPDecompositionTest,
	#superclass : #MBAbstractTest,
	#category : #'CalipeL-Matrix-Benchmarks-Tests'
}

{ #category : #accessing }
MBLUPDecompositionTest >> classname [
	^ MBLUPDecomposition 
]

{ #category : #tests }
MBLUPDecompositionTest >> test [

	self testRunAll.
]
