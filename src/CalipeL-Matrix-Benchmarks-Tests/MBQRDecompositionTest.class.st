Class {
	#name : #MBQRDecompositionTest,
	#superclass : #MBAbstractTest,
	#category : #'CalipeL-Matrix-Benchmarks-Tests'
}

{ #category : #accessing }
MBQRDecompositionTest >> classname [
	^ MBQRDecomposition 
]

{ #category : #tests }
MBQRDecompositionTest >> test [

	self testRunAll.
]
