Class {
	#name : #MBDeterminantTest,
	#superclass : #MBAbstractTest,
	#category : #'Matrix-Benchmarks-Tests'
}

{ #category : #accessing }
MBDeterminantTest >> classname [
	^ MBDeterminant
]

{ #category : #tests }
MBDeterminantTest >> test [

	self testRunAll.
]
