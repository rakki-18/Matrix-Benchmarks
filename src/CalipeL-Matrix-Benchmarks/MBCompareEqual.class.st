Class {
	#name : #MBCompareEqual,
	#superclass : #MBSetup,
	#category : #'CalipeL-Matrix-Benchmarks'
}

{ #category : #benchmarks }
MBCompareEqual >> comparEqualAIRowMatrix [

	
	<benchmark: 'AIRowMatrix compare  equal matrices'>
	<setup: #setupAIRowMatrix>

	1000000 timesRepeat:[  a1 = a1 ].
]

{ #category : #benchmarks }
MBCompareEqual >> compareEqualArray2D [

	
	<benchmark: 'Array2D compare equal matrices'>
	<setup: #setupArray2D>

	1000000 timesRepeat:[  a1 = a1 ].
]

{ #category : #benchmarks }
MBCompareEqual >> compareEqualPMMatrix [

	
	<benchmark: 'PMMatrix compare  equal matrices'>
	<setup: #setupPMMatrix>

	100000 timesRepeat:[  a1 = a1 ].
]

{ #category : #benchmarks }
MBCompareEqual >> compareEqualPMSymmetricMatrix [

	
	<benchmark: 'PMSymmetricMatrix compare  equal matrices'>
	<setup: #setupPMSymmetricMatrix>

	100000 timesRepeat:[  a1 = a1 ].
]
