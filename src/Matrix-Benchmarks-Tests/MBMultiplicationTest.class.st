Class {
	#name : #MBMultiplicationTest,
	#superclass : #MBAbstractTest,
	#category : #'Matrix-Benchmarks-Tests'
}

{ #category : #accessing }
MBMultiplicationTest >> classname [
	^ MBMultiplication 
]

{ #category : #tests }
MBMultiplicationTest >> test [

	self testRunAll.
]
