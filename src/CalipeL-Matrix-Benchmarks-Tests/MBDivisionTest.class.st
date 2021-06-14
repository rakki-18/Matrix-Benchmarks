Class {
	#name : #MBDivisionTest,
	#superclass : #MBAbstractTest,
	#category : #'CalipeL-Matrix-Benchmarks-Tests'
}

{ #category : #accessing }
MBDivisionTest >> classname [
	^ MBDivision 
]

{ #category : #tests }
MBDivisionTest >> test [

	self testRunAll.
]
