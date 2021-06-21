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

	self initRepetitions timesRepeat:[  AIColumnMatrix new: matrixSize withAll: 0].
	
]

{ #category : #diagonal }
MBBuildZeros >> buildZeroAIDiagonalMatrix [

	
	<benchmark: 'AIDiagonal'>

	self initRepetitions timesRepeat:[  AIDiagonalMatrix new: matrixSize withAll: 0].
	
]

{ #category : #normal }
MBBuildZeros >> buildZeroAIRowMatrix [

	
	<benchmark: 'AIRow'>

	self initRepetitions timesRepeat:[  AIRowMatrix new: matrixSize withAll: 0].
	
]

{ #category : #symmetric }
MBBuildZeros >> buildZeroAISymetricMatrix [

	
	<benchmark: 'AISymetric'>

	self initRepetitions timesRepeat:[  AISymetricMatrix new: matrixSize withAll: 0].
	
]

{ #category : #normal }
MBBuildZeros >> buildZeroArray2D [

	
	<benchmark: 'Array2D'>

	self initRepetitions timesRepeat:[  Array2D zeros: matrixSize ].
	
]

{ #category : #normal }
MBBuildZeros >> buildZeroPMMatrix [

	
	<benchmark: 'PMMatrix'>


	self initRepetitions timesRepeat:[  PMMatrix zerosRows: matrixSize cols: matrixSize].
]

{ #category : #symmetric }
MBBuildZeros >> buildZeroPMSymmetricMatrix [

	
	<benchmark: 'PMSymmetricMatrix'>


	self initRepetitions timesRepeat:[  PMSymmetricMatrix  zerosRows: matrixSize cols: matrixSize].
]
