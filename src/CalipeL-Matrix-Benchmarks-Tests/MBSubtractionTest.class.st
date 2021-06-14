Class {
	#name : #MBSubtractionTest,
	#superclass : #MBAbstractTest,
	#category : #'CalipeL-Matrix-Benchmarks-Tests'
}

{ #category : #accessing }
MBSubtractionTest >> classname [
	^ MBSubtraction 
]

{ #category : #tests }
MBSubtractionTest >> test [

	self testRunAll.
]
