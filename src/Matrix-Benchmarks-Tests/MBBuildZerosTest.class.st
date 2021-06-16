Class {
	#name : #MBBuildZerosTest,
	#superclass : #MBAbstractTest,
	#category : #'Matrix-Benchmarks-Tests'
}

{ #category : #accessing }
MBBuildZerosTest >> classname [
	^ MBBuildZeros 
]

{ #category : #tests }
MBBuildZerosTest >> test [

	self testRunAll.
]
