Class {
	#name : #MBCompareEqual,
	#superclass : #MBSetup,
	#category : #'CalipeL-Matrix-Benchmarks'
}

{ #category : #benchmarks }
MBCompareEqual >> comparEqualAIMatrix [

	
	<benchmark: 'AIMatrix compare  equal matrices'>
	<setup: #setuptwoAIMatrix>

	1000000 timesRepeat:[  a1 = a1 ].
]

{ #category : #benchmarks }
MBCompareEqual >> compareEqualArray2D [

	
	<benchmark: 'Array2D compare equal matrices'>
	<setup: #setuptwoArray2D>

	1000000 timesRepeat:[  a1 = a1 ].
]

{ #category : #benchmarks }
MBCompareEqual >> compareEqualPMMatrix [

	
	<benchmark: 'PMMatrix compare  equal matrices'>
	<setup: #setuptwoPMMatrix>

	100000 timesRepeat:[  a1 = a1 ].
]
