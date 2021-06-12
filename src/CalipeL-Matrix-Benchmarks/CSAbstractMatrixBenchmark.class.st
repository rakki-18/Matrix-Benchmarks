Class {
	#name : #CSAbstractMatrixBenchmark,
	#superclass : #Object,
	#instVars : [
		'aArray'
	],
	#category : #'CalipeL-Matrix-Benchmarks'
}

{ #category : #initialization }
CSAbstractMatrixBenchmark >> benchInitialization [
	
	self initRepetitions timesRepeat: [ self matrixClass new: self elementSize ].


]

{ #category : #initialization }
CSAbstractMatrixBenchmark >> defaultElementSize [
	
	^ 500.
]

{ #category : #initialization }
CSAbstractMatrixBenchmark >> defaultInitRepetitions [
	
	^ 100.
]

{ #category : #initialization }
CSAbstractMatrixBenchmark >> elementSize [
	
	^ self defaultElementSize 
]

{ #category : #initialization }
CSAbstractMatrixBenchmark >> initRepetitions [ 
	
	^ self defaultInitRepetitions.


]

{ #category : #initialization }
CSAbstractMatrixBenchmark >> vectorSetup [


	aArray := Array new: self elementSize.
	1 to: self elementSize do: [ :i | aArray at: i put: (10000 random) ].
]
