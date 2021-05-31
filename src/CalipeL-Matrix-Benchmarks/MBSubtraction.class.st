Class {
	#name : #MBSubtraction,
	#superclass : #MBSetup,
	#category : #'CalipeL-Matrix-Benchmarks'
}

{ #category : #benchmarks }
MBSubtraction >> subtractAIRowMatrix [

	
	<benchmark: 'AIRowMatrix subtraction'>
	<setup: #setuptwoAIRowMatrix>

	100 timesRepeat:[  a1 - a2 ].
]

{ #category : #benchmarks }
MBSubtraction >> subtractArray2D [

	
	<benchmark: 'Array 2D addition subtraction'>
	<setup: #setuptwoArray2D>

	100 timesRepeat:[  a1 - a2 ].
]

{ #category : #benchmarks }
MBSubtraction >> subtractPMMatrix [

	
	<benchmark: 'PMMatrix subtraction'>
	<setup: #setuptwoPMMatrix>

	100 timesRepeat:[  a1 - a2 ].
]

{ #category : #benchmarks }
MBSubtraction >> subtractPMSymmetricMatrix [

	
	<benchmark: 'PMSymmetricMatrix subtraction'>
	<setup: #setuptwoPMSymmetricMatrix>

	100 timesRepeat:[  a1 - a2 ].
]
