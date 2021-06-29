Class {
	#name : #MBBuildSpace,
	#superclass : #MBBuild,
	#category : #'Matrix-Benchmarks'
}

{ #category : #normal }
MBBuildSpace >> buildAIColumnMatrix [  

	^ self bench: [ AIColumnMatrix new: self matrixSize]
	
]

{ #category : #normal }
MBBuildSpace >> buildAIDiagonalMatrix [  

	^ self bench: [ AIDiagonalMatrix  new: self matrixSize]
	
]

{ #category : #normal }
MBBuildSpace >> buildAIRowMatrix [ 

	^ self bench: [ AIRowMatrix  new: self matrixSize].
	
]

{ #category : #normal }
MBBuildSpace >> buildAISymetricMatrix [   

	^ self bench: [ AISymetricMatrix new: self matrixSize]
	
]

{ #category : #normal }
MBBuildSpace >> buildArray2D [   

	^ self bench: [ Array2D new: self matrixSize]
	
]

{ #category : #normal }
MBBuildSpace >> buildPMMatrix [

	^ self bench: [ PMMatrix new: self matrixSize]
	
]

{ #category : #normal }
MBBuildSpace >> buildPMSymmetricMatrix [ 

	^ self bench: [ PMSymmetricMatrix  new: self matrixSize]
	
]
