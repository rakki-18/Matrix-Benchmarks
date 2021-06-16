Class {
	#name : #MBStrassenMultiplicationTest,
	#superclass : #MBAbstractTest,
	#category : #'Matrix-Benchmarks-Tests'
}

{ #category : #accessing }
MBStrassenMultiplicationTest >> classname [
	^ MBStrassenMultiplication  
]

{ #category : #tests }
MBStrassenMultiplicationTest >> test [

	self testRunAll.
]
