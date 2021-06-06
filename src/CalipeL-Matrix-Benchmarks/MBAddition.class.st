Class {
	#name : #MBAddition,
	#superclass : #MBSetup,
	#category : #'CalipeL-Matrix-Benchmarks'
}

{ #category : #benchmarks }
MBAddition >> addAIColumnMatrix [

	
	<benchmark: 'AIColumn'>
	<setup: #setuptwoAIColumnMatrix>

	100 timesRepeat:[  a1 + a2 ].
]

{ #category : #benchmarks }
MBAddition >> addAIDiagonalMatrix [

	
	<benchmark: 'AIDiagonal'>
	<setup: #setuptwoAIDiagonalMatrix>

	100 timesRepeat:[  a1 + a2 ].
]

{ #category : #benchmarks }
MBAddition >> addAIRowMatrix [

	
	<benchmark: 'AIRow'>
	<setup: #setuptwoAIRowMatrix>

	100 timesRepeat:[  a1 + a2 ].
]

{ #category : #benchmarks }
MBAddition >> addAISymetricMatrix [

	
	<benchmark: 'AISymetric'>
	<setup: #setuptwoAISymetricMatrix>

	100 timesRepeat:[  a1 + a2 ].
]

{ #category : #benchmarks }
MBAddition >> addArray2D [

	
	<benchmark: 'Array2D'>
	<setup: #setuptwoArray2D>

	100 timesRepeat:[  a1 + a2 ].
]

{ #category : #benchmarks }
MBAddition >> addPMMatrix [

	
	<benchmark: 'PMMatrix'>
	<setup: #setuptwoPMMatrix>

	100 timesRepeat:[  a1 + a2 ].
]

{ #category : #benchmarks }
MBAddition >> addPMSymmetricMatrix [

	
	<benchmark: 'PMSymmetric'>
	<setup: #setuptwoPMSymmetricMatrix>

	100 timesRepeat:[  a1 + a2 ].
]
