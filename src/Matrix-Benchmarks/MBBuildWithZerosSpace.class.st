Class {
	#name : #MBBuildWithZerosSpace,
	#superclass : #MBBuildZeros,
	#category : #'Matrix-Benchmarks'
}

{ #category : #benchmarks }
MBBuildWithZerosSpace >> buildZeroAIColumnMatrix [

	

	^ self bench:[  AIColumnMatrix new: matrixSize withAll: 0].
	
]

{ #category : #benchmarks }
MBBuildWithZerosSpace >> buildZeroAIDiagonalMatrix [ 

	

	^ self bench:[  AIDiagonalMatrix  new: matrixSize withAll: 0].
	
]

{ #category : #benchmarks }
MBBuildWithZerosSpace >> buildZeroAIRowMatrix [ 

	

	^ self bench:[  AIRowMatrix  new: matrixSize withAll: 0].
	
]

{ #category : #benchmarks }
MBBuildWithZerosSpace >> buildZeroAISymetricMatrix [ 

	

	^ self bench:[  AISymetricMatrix new: matrixSize withAll: 0].
	
]

{ #category : #benchmarks }
MBBuildWithZerosSpace >> buildZeroArray2D [ 

	

	^ self bench:[  Array2D  zeros: matrixSize ].
	
]

{ #category : #benchmarks }
MBBuildWithZerosSpace >> buildZeroPMMatrix [

	

	^ self bench:[ PMMatrix zerosRows: matrixSize cols: matrixSize ].
	
]
