Class {
	#name : #MBBuildZeros,
	#superclass : #MBSetup,
	#category : #'CalipeL-Matrix-Benchmarks'
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

{ #category : #benchmarks }
MBBuildZeros >> buildZeroAIDiagonalMatrix [

	
	<benchmark: 'AIDiagonal'>

	100 timesRepeat:[  AIDiagonalMatrix new: 500 withAll: 0].
	
]

{ #category : #benchmarks }
MBBuildZeros >> buildZeroAIRowMatrix [

	
	<benchmark: 'AIRow'>

	100 timesRepeat:[  AIRowMatrix new: 500 withAll: 0].
	
]

{ #category : #benchmarks }
MBBuildZeros >> buildZeroAISymetricMatrix [

	
	<benchmark: 'AISymetric'>

	100 timesRepeat:[  AISymetricMatrix new: 500 withAll: 0].
	
]

{ #category : #benchmarks }
MBBuildZeros >> buildZeroArray2D [

	
	<benchmark: 'Array2D'>

	100 timesRepeat:[  Array2D zeros: 500 ].
	
]

{ #category : #benchmarks }
MBBuildZeros >> buildZeroPMMatrix [

	
	<benchmark: 'PMMatrix'>


	100 timesRepeat:[  PMMatrix zerosRows: 500 cols: 500].
]
