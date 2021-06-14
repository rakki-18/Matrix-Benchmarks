Class {
	#name : #MBStrassenMultiplicationTest,
	#superclass : #MBAbstractTest,
	#category : #'CalipeL-Matrix-Benchmarks-Tests'
}

{ #category : #accessing }
MBStrassenMultiplicationTest >> classname [
	^ MBStrassenMultiplication  
]

{ #category : #tests }
MBStrassenMultiplicationTest >> test [

	self testRunAll.
]
