Class {
	#name : #MBCompareEqualTest,
	#superclass : #MBAbstractTest,
	#category : #'Matrix-Benchmarks-Tests'
}

{ #category : #accessing }
MBCompareEqualTest >> classname [
	^ MBCompareEqual 
]

{ #category : #tests }
MBCompareEqualTest >> test [

	self testRunAll.
]
