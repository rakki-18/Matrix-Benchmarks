Class {
	#name : #MBBuildSpace,
	#superclass : #MBBuild,
	#category : #'Matrix-Benchmarks-Core'
}

{ #category : #normal }
MBBuildSpace >> buildAIColumnMatrix [ 
 
	<name: 'AIColumn'>
	^ self bench: [ AIColumnMatrix new: self matrixSize]
	
]

{ #category : #normal }
MBBuildSpace >> buildAIDiagonalMatrix [  

	<name: 'AIDiagonal'>
	^ self bench: [ AIDiagonalMatrix  new: self matrixSize]
	
]

{ #category : #normal }
MBBuildSpace >> buildAIRowMatrix [ 

	<name: 'AIRow'>
	^ self bench: [ AIRowMatrix  new: self matrixSize].
	
]

{ #category : #normal }
MBBuildSpace >> buildAISymetricMatrix [   

	<name: 'AISymetric'>
	^ self bench: [ AISymetricMatrix new: self matrixSize]
	
]

{ #category : #normal }
MBBuildSpace >> buildArray2D [   

	<name: 'Array2D'>
	^ self bench: [ Array2D new: self matrixSize]
	
]

{ #category : #normal }
MBBuildSpace >> buildPMMatrix [

	<name: 'PMMatrix'>
	^ self bench: [ PMMatrix new: self matrixSize]
	
]

{ #category : #normal }
MBBuildSpace >> buildPMSymmetricMatrix [ 

	<name: 'PMSymmetric'>
	^ self bench: [ PMSymmetricMatrix  new: self matrixSize]
	
]
