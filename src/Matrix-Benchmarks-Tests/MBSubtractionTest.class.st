Class {
	#name : #MBSubtractionTest,
	#superclass : #MBAbstractTest,
	#category : #'Matrix-Benchmarks-Tests'
}

{ #category : #accessing }
MBSubtractionTest >> classname [
	^ MBSubtraction 
]

{ #category : #tests }
MBSubtractionTest >> test [

	self testRunAll.
]
