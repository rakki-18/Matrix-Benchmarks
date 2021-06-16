Class {
	#name : #MBTransposeTest,
	#superclass : #MBAbstractTest,
	#category : #'Matrix-Benchmarks-Tests'
}

{ #category : #accessing }
MBTransposeTest >> classname [
	^ MBTranspose 
]

{ #category : #tests }
MBTransposeTest >> test [

	self testRunAll.
]
