Class {
	#name : #MBTranspose,
	#superclass : #MBSetup,
	#category : #'CalipeL-Matrix-Benchmarks'
}

{ #category : #benchmarks }
MBTranspose >> transposeAIRowMatrix [

	
	<benchmark: 'AIRowMatrix transposition'>
	<setup: #setupAIRowMatrix>

	100 timesRepeat:[  a1 transposed ].
]

{ #category : #benchmarks }
MBTranspose >> transposeArray2D [

	
	<benchmark: 'Array 2D transposition'>
	<setup: #setupArray2D>

	100 timesRepeat:[  a1 transposed ].
]

{ #category : #benchmarks }
MBTranspose >> transposePMMatrix [

	
	<benchmark: 'PMMatrix transposition'>
	<setup: #setupPMMatrix>

	100 timesRepeat:[  a1 transpose ].
]
