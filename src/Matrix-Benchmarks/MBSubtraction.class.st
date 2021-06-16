Class {
	#name : #MBSubtraction,
	#superclass : #MBSetup,
	#category : #'Matrix-Benchmarks'
}

{ #category : #accessing }
MBSubtraction class >> title [


	^ 'Matrix Subtraction'
]

{ #category : #benchmarks }
MBSubtraction >> subtractAIColumnMatrix [

	
	<benchmark: 'AIColumn'>
	<setup: #setuptwoAIColumnMatrix>

	100 timesRepeat:[  a1 - a2 ].
]

{ #category : #benchmarks }
MBSubtraction >> subtractAIDiagonalMatrix [

	
	<benchmark: 'AIDiagonal'>
	<setup: #setuptwoAIDiagonalMatrix>

	100 timesRepeat:[  a1 - a2 ].
]

{ #category : #benchmarks }
MBSubtraction >> subtractAIRowMatrix [

	
	<benchmark: 'AIRow'>
	<setup: #setuptwoAIRowMatrix>

	100 timesRepeat:[  a1 - a2 ].
]

{ #category : #benchmarks }
MBSubtraction >> subtractAISymetricMatrix [

	
	<benchmark: 'AISymetric'>
	<setup: #setuptwoAISymetricMatrix>

	100 timesRepeat:[  a1 - a2 ].
]

{ #category : #benchmarks }
MBSubtraction >> subtractArray2D [

	
	<benchmark: 'Array2D'>
	<setup: #setuptwoArray2D>

	100 timesRepeat:[  a1 - a2 ].
]

{ #category : #benchmarks }
MBSubtraction >> subtractPMMatrix [

	
	<benchmark: 'PMMatrix'>
	<setup: #setuptwoPMMatrix>

	100 timesRepeat:[  a1 - a2 ].
]

{ #category : #benchmarks }
MBSubtraction >> subtractPMSymmetricMatrix [

	
	<benchmark: 'PMSymmetric'>
	<setup: #setuptwoPMSymmetricMatrix>

	100 timesRepeat:[  a1 - a2 ].
]
