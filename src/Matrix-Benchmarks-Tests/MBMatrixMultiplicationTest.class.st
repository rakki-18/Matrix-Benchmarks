Class {
	#name : #MBMatrixMultiplicationTest,
	#superclass : #MBAbstractTest,
	#category : #'Matrix-Benchmarks-Tests'
}

{ #category : #tests }
MBMatrixMultiplicationTest >> classname [
	^ MBMatrixMultiplication 
]

{ #category : #tests }
MBMatrixMultiplicationTest >> test [

	self testRunAll.
]