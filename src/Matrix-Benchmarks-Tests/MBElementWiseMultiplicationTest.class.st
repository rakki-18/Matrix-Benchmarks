Class {
	#name : #MBElementWiseMultiplicationTest,
	#superclass : #MBAbstractTest,
	#category : #'Matrix-Benchmarks-Tests'
}

{ #category : #accessing }
MBElementWiseMultiplicationTest >> classname [
	^ MBElementWiseMultiplication 
]

{ #category : #tests }
MBElementWiseMultiplicationTest >> test [

	self testRunAll.
]
