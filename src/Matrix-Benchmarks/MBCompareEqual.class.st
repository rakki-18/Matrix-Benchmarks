Class {
	#name : #MBCompareEqual,
	#superclass : #MBSetup,
	#category : #'Matrix-Benchmarks'
}

{ #category : #accessing }
MBCompareEqual class >> title [


	^ 'Comparing equal matrices'
]

{ #category : #benchmarks }
MBCompareEqual >> comparEqualAIColumnMatrix [

	
	<benchmark: 'AIColumn'>
	<setup: #setupAIColumnMatrix>

	1000000 timesRepeat:[  a1 = a1 ].
]

{ #category : #benchmarks }
MBCompareEqual >> comparEqualAIDiagonalMatrix [

	
	<benchmark: 'AIDiagonal'>
	<setup: #setupAIDiagonalMatrix>

	1000000 timesRepeat:[  a1 = a1 ].
]

{ #category : #benchmarks }
MBCompareEqual >> comparEqualAIRowMatrix [

	
	<benchmark: 'AIRow'>
	<setup: #setupAIRowMatrix>

	1000000 timesRepeat:[  a1 = a1 ].
]

{ #category : #benchmarks }
MBCompareEqual >> comparEqualAISymetricMatrix [

	
	<benchmark: 'AISymetric'>
	<setup: #setupAISymetricMatrix>

	1000000 timesRepeat:[  a1 = a1 ].
]

{ #category : #benchmarks }
MBCompareEqual >> compareEqualArray2D [

	
	<benchmark: 'Array2D'>
	<setup: #setupArray2D>

	1000000 timesRepeat:[  a1 = a1 ].
]

{ #category : #benchmarks }
MBCompareEqual >> compareEqualPMMatrix [

	
	<benchmark: 'PMMatrix'>
	<setup: #setupPMMatrix>

	100000 timesRepeat:[  a1 = a1 ].
]

{ #category : #benchmarks }
MBCompareEqual >> compareEqualPMSymmetricMatrix [

	
	<benchmark: 'PMSymmetric'>
	<setup: #setupPMSymmetricMatrix>

	100000 timesRepeat:[  a1 = a1 ].
]
