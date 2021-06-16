Class {
	#name : #MBDivisionTest,
	#superclass : #MBAbstractTest,
	#category : #'Matrix-Benchmarks-Tests'
}

{ #category : #accessing }
MBDivisionTest >> classname [
	^ MBDivision 
]

{ #category : #tests }
MBDivisionTest >> test [

	self testRunAll.
]
