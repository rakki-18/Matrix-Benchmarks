Class {
	#name : #MBAddition,
	#superclass : #MBSetup,
	#category : #'CalipeL-Matrix-Benchmarks'
}

{ #category : #benchmarks }
MBAddition >> addAIColumnMatrix [

	
	<benchmark: 'AIColumnMatrix addition'>
	<setup: #setuptwoAIColumnMatrix>

	100 timesRepeat:[  a1 + a2 ].
]

{ #category : #benchmarks }
MBAddition >> addAIRowMatrix [

	
	<benchmark: 'AIRowMatrix addition'>
	<setup: #setuptwoAIRowMatrix>

	100 timesRepeat:[  a1 + a2 ].
]

{ #category : #benchmarks }
MBAddition >> addArray2D [

	
	<benchmark: 'Array 2D addition'>
	<setup: #setuptwoArray2D>

	100 timesRepeat:[  a1 + a2 ].
]

{ #category : #benchmarks }
MBAddition >> addPMMatrix [

	
	<benchmark: 'PMMatrix addition'>
	<setup: #setuptwoPMMatrix>

	100 timesRepeat:[  a1 + a2 ].
]

{ #category : #benchmarks }
MBAddition >> addPMSymmetricMatrix [

	
	<benchmark: 'PMSymmetricMatrix addition'>
	<setup: #setuptwoPMSymmetricMatrix>

	100 timesRepeat:[  a1 + a2 ].
]
