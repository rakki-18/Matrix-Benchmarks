"
I benchmark the operation, ""Comparing two unequal matrices"".


Public API and Key Messages

To run the benchmarks
- `MBCompareNonequal runBenchmarks: anInteger` runs the benchmarks for a matrix size of `anInteger`.
- `MBCompareNonequal  runAllBenchmarks` runs the benchmarks for the matrix sizes from 50 to 300 and shows a line chart plot.

"
Class {
	#name : #MBCompareNonequal,
	#superclass : #MBAbstract,
	#category : #'Matrix-Benchmarks-Core'
}

{ #category : #accessing }
MBCompareNonequal class >> friendlyName [ 

	^ 'Compare equality of two non-equal matrices '
]

{ #category : #accessing }
MBCompareNonequal class >> title [


	^ 'Comparing non-equal '
]

{ #category : #benchmarks }
MBCompareNonequal >> comparenonequalAIColumnMatrix [

	
	<benchmark: 'AIColumn'>
	<setup: #setuptwoAIColumnMatrix>

	self initRepetitions timesRepeat:[  a1 = a2 ].
]

{ #category : #diagonal }
MBCompareNonequal >> comparenonequalAIDiagonalMatrix [

	
	<benchmark: 'AIDiagonal'>
	<setup: #setuptwoAIDiagonalMatrix>

	self initRepetitions timesRepeat:[  a1 = a2 ].
]

{ #category : #normal }
MBCompareNonequal >> comparenonequalAIRowMatrix [

	
	<benchmark: 'AIRow'>
	<setup: #setuptwoAIRowMatrix>

	self initRepetitions timesRepeat:[  a1 = a2 ].
]

{ #category : #symmetric }
MBCompareNonequal >> comparenonequalAISymetricMatrix [

	
	<benchmark: 'AISymetric'>
	<setup: #setuptwoAISymetricMatrix>

	self initRepetitions timesRepeat:[  a1 = a2 ].
]

{ #category : #normal }
MBCompareNonequal >> comparenonequalArray2D [

	
	<benchmark: 'Array2D'>
	<setup: #setuptwoArray2D>

	self initRepetitions timesRepeat:[  a1 = a2 ].
]

{ #category : #normal }
MBCompareNonequal >> comparenonequalPMMatrix [

	
	<benchmark: 'PMMatrix'>
	<setup: #setuptwoPMMatrix>

	self initRepetitions timesRepeat:[  a1 = a2 ].
]

{ #category : #symmetric }
MBCompareNonequal >> comparenonequalPMSymmetricMatrix [

	
	<benchmark: 'PMSymmetric'>
	<setup: #setuptwoPMSymmetricMatrix>

	self initRepetitions timesRepeat:[  a1 = a2 ].
]

{ #category : #parameters }
MBCompareNonequal >> initRepetitions [ 

	^ 100000
]
