Class {
	#name : #MBCompareNonequal,
	#superclass : #MBSetup,
	#category : #'Matrix-Benchmarks'
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

{ #category : #diagonal }
MBCompareNonequal >> comparenonequalAIDiagonalMatrix [

	
	<benchmark: 'AIDiagonal'>
	<setup: #setuptwoAIDiagonalMatrix>

	1000000 timesRepeat:[  a1 = a2 ].
]

{ #category : #normal }
MBCompareNonequal >> comparenonequalAIRowMatrix [

	
	<benchmark: 'AIRow'>
	<setup: #setuptwoAIRowMatrix>

	1000000 timesRepeat:[  a1 = a2 ].
]

{ #category : #symmetric }
MBCompareNonequal >> comparenonequalAISymetricMatrix [

	
	<benchmark: 'AISymetric'>
	<setup: #setuptwoAISymetricMatrix>

	1000000 timesRepeat:[  a1 = a2 ].
]

{ #category : #normal }
MBCompareNonequal >> comparenonequalArray2D [

	
	<benchmark: 'Array2D'>
	<setup: #setuptwoArray2D>

	1000000 timesRepeat:[  a1 = a2 ].
]

{ #category : #normal }
MBCompareNonequal >> comparenonequalPMMatrix [

	
	<benchmark: 'PMMatrix'>
	<setup: #setuptwoPMMatrix>

	1000000 timesRepeat:[  a1 = a2 ].
]

{ #category : #symmetric }
MBCompareNonequal >> comparenonequalPMSymmetricMatrix [

	
	<benchmark: 'PMSymmetric'>
	<setup: #setuptwoPMSymmetricMatrix>

	1000000 timesRepeat:[  a1 = a2 ].
]

{ #category : #parameters }
MBCompareNonequal >> initRepetitions [ 

	^ 100000
]
