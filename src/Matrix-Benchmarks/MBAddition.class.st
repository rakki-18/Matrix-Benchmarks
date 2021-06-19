Class {
	#name : #MBAddition,
	#superclass : #MBSetup,
	#category : #'Matrix-Benchmarks'
}

{ #category : #accessing }
MBAddition class >> title [


	^ 'Matrix Addition'
]

{ #category : #benchmarks }
MBAddition >> addAIColumnMatrix [

	
	<benchmark: 'AIColumn'>
	<setup: #setuptwoAIColumnMatrix>

	100 timesRepeat:[  a1 + a2 ].
]

{ #category : #diagonal }
MBAddition >> addAIDiagonalMatrix [

	
	<benchmark: 'AIDiagonal'>
	<setup: #setuptwoAIDiagonalMatrix>

	100 timesRepeat:[  a1 + a2 ].
]

{ #category : #normal }
MBAddition >> addAIRowMatrix [

	
	<benchmark: 'AIRow'>
	<setup: #setuptwoAIRowMatrix>

	100 timesRepeat:[  a1 + a2 ].
]

{ #category : #symmetric }
MBAddition >> addAISymetricMatrix [

	
	<benchmark: 'AISymetric'>
	<setup: #setuptwoAISymetricMatrix>

	100 timesRepeat:[  a1 + a2 ].
]

{ #category : #normal }
MBAddition >> addArray2D [

	
	<benchmark: 'Array2D'>
	<setup: #setuptwoArray2D>

	100 timesRepeat:[  a1 + a2 ].
]

{ #category : #normal }
MBAddition >> addPMMatrix [

	
	<benchmark: 'PMMatrix'>
	<setup: #setuptwoPMMatrix>

	100 timesRepeat:[  a1 + a2 ].
]

{ #category : #symmetric }
MBAddition >> addPMSymmetricMatrix [

	
	<benchmark: 'PMSymmetric'>
	<setup: #setuptwoPMSymmetricMatrix>

	100 timesRepeat:[  a1 + a2 ].
]
