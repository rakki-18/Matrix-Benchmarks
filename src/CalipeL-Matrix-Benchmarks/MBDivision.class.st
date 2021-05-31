Class {
	#name : #MBDivision,
	#superclass : #MBSetup,
	#category : #'CalipeL-Matrix-Benchmarks'
}

{ #category : #benchmarks }
MBDivision >> divideAIRowMatrix [

	
	<benchmark: 'AIRowMatrix division'>
	<setup: #setupAIRowMatrixandNumber>

	100 timesRepeat:[  a1 / aNumber ].
	
]

{ #category : #benchmarks }
MBDivision >> divideArray2D [

	
	<benchmark: 'Array2D division'>
	<setup: #setupArray2DandNumber>

	100 timesRepeat:[  a1 / aNumber ].
]
