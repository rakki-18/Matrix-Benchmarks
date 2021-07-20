"
I am an abstract class used to run space benchmarks.

I run the `bench:` method and `runSpaceBenchmarks` methods that have been used in the subclasses.

I store the `matrixSize` of the benchmarking matrix that is used extensively in all the subclasses.

"
Class {
	#name : #MBSpaceAbstract,
	#superclass : #Object,
	#instVars : [
		'matrixSize'
	],
	#classInstVars : [
		'spaceBenchmarkResult'
	],
	#category : #'Matrix-Benchmarks-Core'
}

{ #category : #'running - benchmarks' }
MBSpaceAbstract class >> runSpaceBenchmarks: anInteger [
	
	|subclass anInstance|
		
	spaceBenchmarkResult := Dictionary new.
	
	"get the space subclass of self"
	subclass := self subclasses first.
	
	"specify an instance of the subclass"
	anInstance := subclass new matrixSize: anInteger.
	
	subclass selectorsAndMethodsDo: [ :selector :method|
		"store the space consumed for each method in a dictinoary that can be accessed by the name of the implementation"
		 spaceBenchmarkResult at: (method pragmaAt: #name:) arguments first put: (anInstance perform: selector)
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
