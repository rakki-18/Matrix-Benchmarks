Class {
	#name : #MBMultiplicationTest,
	#superclass : #MBAbstractTest,
	#category : #'CalipeL-Matrix-Benchmarks-Tests'
}

{ #category : #accessing }
MBMultiplicationTest >> classname [
	^ MBMultiplication 
]

{ #category : #tests }
MBMultiplicationTest >> test [

	self testRunAll.
]
