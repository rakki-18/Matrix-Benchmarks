Class {
	#name : #MBBuildZeros,
	#superclass : #MBSetup,
	#category : #'Matrix-Benchmarks'
}

{ #category : #accessing }
MBBuildZeros class >> title [


	^ 'Building a zero Matrix'
]

{ #category : #benchmarks }
MBBuildZeros >> buildZeroAIColumnMatrix [

	
	<benchmark: 'AIColumn'>

	100 timesRepeat:[  AIColumnMatrix new: 500 withAll: 0].
	
]

{ #category : #diagonal }
MBBuildZeros >> buildZeroAIDiagonalMatrix [

	
	<benchmark: 'AIDiagonal'>

	100 timesRepeat:[  AIDiagonalMatrix new: 500 withAll: 0].
	
]

{ #category : #normal }
MBBuildZeros >> buildZeroAIRowMatrix [

	
	<benchmark: 'AIRow'>

	100 timesRepeat:[  AIRowMatrix new: 500 withAll: 0].
	
]

{ #category : #symmetric }
MBBuildZeros >> buildZeroAISymetricMatrix [

	
	<benchmark: 'AISymetric'>

	100 timesRepeat:[  AISymetricMatrix new: 500 withAll: 0].
	
]

{ #category : #normal }
MBBuildZeros >> buildZeroArray2D [

	
	<benchmark: 'Array2D'>

	100 timesRepeat:[  Array2D zeros: 500 ].
	
]

{ #category : #normal }
MBBuildZeros >> buildZeroPMMatrix [

	
	<benchmark: 'PMMatrix'>


	100 timesRepeat:[  PMMatrix zerosRows: 500 cols: 500].
]

{ #category : #symmetric }
MBBuildZeros >> buildZeroPMSymmetricMatrix [

	
	<benchmark: 'PMSymmetricMatrix'>


	100 timesRepeat:[  PMSymmetricMatrix  zerosRows: 500 cols: 500].
]
