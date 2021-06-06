Class {
	#name : #MBCompareNonequal,
	#superclass : #MBSetup,
	#category : #'CalipeL-Matrix-Benchmarks'
}

{ #category : #accessing }
MBCompareNonequal class >> title [


	^ 'Comparing non-equal matrices'
]

{ #category : #benchmarks }
MBCompareNonequal >> comparenonequalAIColumnMatrix [

	
	<benchmark: 'AIColumn'>
	<setup: #setuptwoAIColumnMatrix>

	1000000 timesRepeat:[  a1 = a2 ].
]

{ #category : #benchmarks }
MBCompareNonequal >> comparenonequalAIDiagonalMatrix [

	
	<benchmark: 'AIDiagonal'>
	<setup: #setuptwoAIDiagonalMatrix>

	1000000 timesRepeat:[  a1 = a2 ].
]

{ #category : #benchmarks }
MBCompareNonequal >> comparenonequalAIRowMatrix [

	
	<benchmark: 'AIRow'>
	<setup: #setuptwoAIRowMatrix>

	1000000 timesRepeat:[  a1 = a2 ].
]

{ #category : #benchmarks }
MBCompareNonequal >> comparenonequalAISymetricMatrix [

	
	<benchmark: 'AISymetric'>
	<setup: #setuptwoAISymetricMatrix>

	1000000 timesRepeat:[  a1 = a2 ].
]

{ #category : #benchmarks }
MBCompareNonequal >> comparenonequalArray2D [

	
	<benchmark: 'Array2D'>
	<setup: #setuptwoArray2D>

	1000000 timesRepeat:[  a1 = a2 ].
]

{ #category : #benchmarks }
MBCompareNonequal >> comparenonequalPMMatrix [

	
	<benchmark: 'PMMatrix'>
	<setup: #setuptwoPMMatrix>

	1000000 timesRepeat:[  a1 = a2 ].
]

{ #category : #benchmarks }
MBCompareNonequal >> comparenonequalPMSymmetricMatrix [

	
	<benchmark: 'PMSymmetric'>
	<setup: #setuptwoPMSymmetricMatrix>

	1000000 timesRepeat:[  a1 = a2 ].
]
