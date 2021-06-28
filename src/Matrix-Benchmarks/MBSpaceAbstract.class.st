Class {
	#name : #MBSpaceAbstract,
	#superclass : #Object,
	#instVars : [
		'matrixSize'
	],
	#category : #'Matrix-Benchmarks'
}

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
