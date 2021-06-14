Class {
	#name : #MBCompareNonequalTest,
	#superclass : #MBAbstractTest,
	#category : #'CalipeL-Matrix-Benchmarks-Tests'
}

{ #category : #accessing }
MBCompareNonequalTest >> classname [
	^ MBCompareNonequal 
]

{ #category : #tests }
MBCompareNonequalTest >> test [

	self testRunAll.
]
