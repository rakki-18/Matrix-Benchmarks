Class {
	#name : #MBStrassenMultiplicationSpace,
	#superclass : #MBStrassenMultiplication,
	#category : #'Matrix-Benchmarks'
}

{ #category : #normal }
MBStrassenMultiplicationSpace >> strassenPMMatrix [

	<name: 'PMMatrix'>
	self setupStrassenPMMatrix.

	^ self bench: [ a1 strassenProductWithMatrix: a2].
]