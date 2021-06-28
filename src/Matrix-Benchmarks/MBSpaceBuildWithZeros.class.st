Class {
	#name : #MBSpaceBuildWithZeros,
	#superclass : #MBSpaceAbstract,
	#category : #'Matrix-Benchmarks'
}

{ #category : #benchmarks }
MBSpaceBuildWithZeros >> buildZeroAIColumnMatrix [

	

	self bench:[  AIColumnMatrix new: matrixSize withAll: 0].
	
]

{ #category : #benchmarks }
MBSpaceBuildWithZeros >> buildZeroAIDiagonalMatrix [ 

	

	self bench:[  AIDiagonalMatrix  new: matrixSize withAll: 0].
	
]

{ #category : #benchmarks }
MBSpaceBuildWithZeros >> buildZeroAIRowMatrix [ 

	

	self bench:[  AIRowMatrix  new: matrixSize withAll: 0].
	
]

{ #category : #benchmarks }
MBSpaceBuildWithZeros >> buildZeroAISymetricMatrix [ 

	

	self bench:[  AISymetricMatrix new: matrixSize withAll: 0].
	
]

{ #category : #benchmarks }
MBSpaceBuildWithZeros >> buildZeroArray2D [ 

	

	self bench:[  Array2D  zeros: matrixSize ].
	
]

{ #category : #benchmarks }
MBSpaceBuildWithZeros >> buildZeroPMMatrix [

	

	self bench:[ PMMatrix zerosRows: matrixSize cols: matrixSize ].
	
]
