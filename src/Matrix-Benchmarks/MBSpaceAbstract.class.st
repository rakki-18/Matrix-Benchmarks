Class {
	#name : #MBSpaceAbstract,
	#superclass : #Object,
	#instVars : [
		'matrixSize'
	],
	#classInstVars : [
		'spaceBenchmarkResult'
	],
	#category : #'Matrix-Benchmarks'
}

{ #category : #'running - benchmarks' }
MBSpaceAbstract class >> runSpaceBenchmarks: anInteger [
	
	|subclass anInstance|
		
	spaceBenchmarkResult := OrderedCollection new.
	
	"get the space subclass of self"
	subclass := self subclasses at: 1.
	
	"specify an instance of the subclass"
	anInstance := subclass new matrixSize: anInteger.
	
	subclass selectorsDo: [ :selector|
		 spaceBenchmarkResult addLast: (anInstance perform: selector)
		].
	
	
	
]

{ #category : #accessing }
MBSpaceAbstract class >> spaceBenchmarkResult [

	^ spaceBenchmarkResult 
]

{ #category : #benchmarking }
MBSpaceAbstract >> bench: aBlock [

	|aMessageTally|
	
	aMessageTally  := MessageTally spyOn: aBlock reportOtherProcesses: false cutoff: 1 openResultWindow: false.
	
	^ (aMessageTally gcStats at: 2) abs
	

]

{ #category : #parameters }
MBSpaceAbstract >> matrixSize [

	^matrixSize
]

{ #category : #parameters }
MBSpaceAbstract >> matrixSize: anInteger [

	matrixSize := anInteger.
]
