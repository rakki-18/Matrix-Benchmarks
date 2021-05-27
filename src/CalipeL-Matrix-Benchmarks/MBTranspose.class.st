Class {
	#name : #MBTranspose,
	#superclass : #MBSetup,
	#category : #'CalipeL-Matrix-Benchmarks'
}

{ #category : #benchmarks }
MBTranspose >> transposeAIMatrix [

	
	<benchmark: 'AIMatrix transposition'>
	<setup: #setuptwoAIMatrix>

	100 timesRepeat:[  a1 transposed ].
]

{ #category : #benchmarks }
MBTranspose >> transposeArray2D [

	
	<benchmark: 'Array 2D transposition'>
	<setup: #setuptwoArray2D>

	100 timesRepeat:[  a1 transposed ].
]

{ #category : #benchmarks }
MBTranspose >> transposePMMatrix [

	
	<benchmark: 'PMMatrix transposition'>
	<setup: #setuptwoPMMatrix>

	100 timesRepeat:[  a1 transpose ].
]
