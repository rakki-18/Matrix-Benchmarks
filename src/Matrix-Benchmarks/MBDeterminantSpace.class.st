Class {
	#name : #MBDeterminantSpace,
	#superclass : #MBDeterminant,
	#category : #'Matrix-Benchmarks'
}

{ #category : #normal }
MBDeterminantSpace >> determinantPMMatrix [

	<name: 'PMMatrix'>
	self setupPMMatrix.

	^ self bench: [ a1 determinant ].
]

{ #category : #normal }
MBDeterminantSpace >> determinantPMSymmetricMatrix [

	<name: 'PMSymmetric'>
	self setupPMSymmetricMatrix.

	^ self bench: [ a1 determinant ].
]
