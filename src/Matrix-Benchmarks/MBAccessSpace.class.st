"
Class: MBAccessSpace
                                                                                                    

Please comment me using the following template inspired by Class Responsibility Collaborator (CRC) design:

For the Class part:  State a one line summary. For example, ""I represent a paragraph of text"".

For the Responsibility part: Three sentences about my main responsibilities - what I do, what I know.

For the Collaborators Part: State my main collaborators and one line about how I interact with them.

Public API and Key Messages
•	message one
•	message two
•	(for bonus points) how to create instances.

One simple example is simply gorgeous.

Internal Representation and Key Implementation Points.

Implementation Points

"
Class {
	#name : #MBAccessSpace,
	#superclass : #MBAccess,
	#category : #'Matrix-Benchmarks-Core'
}

{ #category : #benchmarks }
MBAccessSpace >> accessAIColumnMatrix [ 

	<name: 'AIColumn'>
	self setupAIColumnMatrix.

	^ self bench:[  a1 at: matrixSize  and: matrixSize ].
]

{ #category : #benchmarks }
MBAccessSpace >> accessAIDiagonalMatrix [ 

	<name: 'AIDiagonal'>
	self setupAIDiagonalMatrix.

	^ self bench:[  a1 at: matrixSize  and: matrixSize ].
]

{ #category : #benchmarks }
MBAccessSpace >> accessAIRowMatrix [ 

	<name: 'AIRow'>
	self setupAIRowMatrix.

	^ self bench:[  a1 at: matrixSize  and: matrixSize ].
]

{ #category : #benchmarks }
MBAccessSpace >> accessAISymetricMatrix [ 

	<name: 'AISymetric'>
	self setupAISymetricMatrix.

	^ self bench:[  a1 at: matrixSize  and: matrixSize ].
]

{ #category : #benchmarks }
MBAccessSpace >> accessArray2D [

	<name: 'Array2D'>
	self setupArray2D.

	^ self bench:[  a1 at: matrixSize  at: matrixSize ].
]

{ #category : #benchmarks }
MBAccessSpace >> accessPMMatrix [

	<name: 'PMMatrix'>
	self setupPMMatrix.

	^ self bench:[  a1 at: matrixSize  at: matrixSize ].
]

{ #category : #benchmarks }
MBAccessSpace >> accessPMSymmetricMatrix [ 

	<name: 'PMSymmetric'>
	self setupPMSymmetricMatrix.

	^ self bench:[  a1 at: matrixSize  at: matrixSize ].
]
