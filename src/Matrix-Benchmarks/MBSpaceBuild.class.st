Class {
	#name : #MBSpaceBuild,
	#superclass : #MBSpaceAbstract,
	#category : #'Matrix-Benchmarks'
}

{ #category : #normal }
MBSpaceBuild >> buildAIColumnMatrix [  

	^ self bench: [ AIColumnMatrix new: self matrixSize]
	
]

{ #category : #normal }
MBSpaceBuild >> buildAIDiagonalMatrix [  

	^ self bench: [ AIDiagonalMatrix  new: self matrixSize]
	
]

{ #category : #normal }
MBSpaceBuild >> buildAIRowMatrix [ 

	^ self bench: [ AIRowMatrix  new: self matrixSize].
	
]

{ #category : #normal }
MBSpaceBuild >> buildAISymetricMatrix [   

	^ self bench: [ AISymetricMatrix new: self matrixSize]
	
]

{ #category : #normal }
MBSpaceBuild >> buildArray2D [   

	^ self bench: [ Array2D new: self matrixSize]
	
]

{ #category : #normal }
MBSpaceBuild >> buildPMMatrix [

	^ self bench: [ PMMatrix new: self matrixSize]
	
]

{ #category : #normal }
MBSpaceBuild >> buildPMSymmetricMatrix [ 

	^ self bench: [ PMSymmetricMatrix  new: self matrixSize]
	
]
