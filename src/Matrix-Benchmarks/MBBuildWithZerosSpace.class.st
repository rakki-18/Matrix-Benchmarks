Class {
	#name : #MBBuildWithZerosSpace,
	#superclass : #MBBuildZeros,
	#category : #'Matrix-Benchmarks'
}

{ #category : #benchmarks }
MBBuildWithZerosSpace >> buildZeroAIColumnMatrix [

	
	<name: 'AIColumn'>
	^ self bench:[  AIColumnMatrix new: matrixSize withAll: 0].
	
]

{ #category : #benchmarks }
MBBuildWithZerosSpace >> buildZeroAIDiagonalMatrix [ 

	
	<name: 'AIDiagonal'>
	^ self bench:[  AIDiagonalMatrix  new: matrixSize withAll: 0].
	
]

{ #category : #benchmarks }
MBBuildWithZerosSpace >> buildZeroAIRowMatrix [ 

	
	<name: 'AIRow'>
	^ self bench:[  AIRowMatrix  new: matrixSize withAll: 0].
	
]

{ #category : #benchmarks }
MBBuildWithZerosSpace >> buildZeroAISymetricMatrix [ 

	
	<name: 'AISymetric'>
	^ self bench:[  AISymetricMatrix new: matrixSize withAll: 0].
	
]

{ #category : #benchmarks }
MBBuildWithZerosSpace >> buildZeroArray2D [ 

	
	<name: 'Array2D'>
	^ self bench:[  Array2D  zeros: matrixSize ].
	
]

{ #category : #benchmarks }
MBBuildWithZerosSpace >> buildZeroPMMatrix [

	
	<name: 'PMMatrix'>
	^ self bench:[ PMMatrix zerosRows: matrixSize cols: matrixSize ].
	
]
