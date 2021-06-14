Class {
	#name : #MBCompareEqualTest,
	#superclass : #MBAbstractTest,
	#category : #'CalipeL-Matrix-Benchmarks-Tests'
}

{ #category : #accessing }
MBCompareEqualTest >> classname [
	^ MBCompareEqual 
]

{ #category : #tests }
MBCompareEqualTest >> test [

	self testRunAll.
]
