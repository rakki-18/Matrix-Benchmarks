Class {
	#name : #MBCompareNonequalTest,
	#superclass : #MBAbstractTest,
	#category : #'Matrix-Benchmarks-Tests'
}

{ #category : #accessing }
MBCompareNonequalTest >> classname [
	^ MBCompareNonequal 
]

{ #category : #tests }
MBCompareNonequalTest >> test [

	self testRunAll.
]
