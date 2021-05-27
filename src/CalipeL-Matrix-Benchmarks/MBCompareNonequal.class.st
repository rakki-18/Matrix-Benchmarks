Class {
	#name : #MBCompareNonequal,
	#superclass : #MBSetup,
	#category : #'CalipeL-Matrix-Benchmarks'
}

{ #category : #benchmarks }
MBCompareNonequal >> comparenonequalAIMatrix [

	
	<benchmark: 'AIMatrix compare non equal matrices'>
	<setup: #setuptwoAIMatrix>

	1000000 timesRepeat:[  a1 = a2 ].
]

{ #category : #benchmarks }
MBCompareNonequal >> comparenonequalArray2D [

	
	<benchmark: 'Array2D compare non equal matrices'>
	<setup: #setuptwoArray2D>

	1000000 timesRepeat:[  a1 = a2 ].
]

{ #category : #benchmarks }
MBCompareNonequal >> comparenonequalPMMatrix [

	
	<benchmark: 'PMMatrix compare non equal matrices'>
	<setup: #setuptwoPMMatrix>

	1000000 timesRepeat:[  a1 = a2 ].
]
