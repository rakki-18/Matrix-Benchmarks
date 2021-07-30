Class {
	#name : #MBCopyingTest,
	#superclass : #MBAbstractTest,
	#category : #'Matrix-Benchmarks-Tests'
}

{ #category : #accessing }
MBCopyingTest >> classname [
	^ MBCopying 
]

{ #category : #tests }
MBCopyingTest >> test [

	self testRunAll.
]
