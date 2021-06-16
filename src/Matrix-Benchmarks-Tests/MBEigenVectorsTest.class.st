Class {
	#name : #MBEigenVectorsTest,
	#superclass : #MBAbstractTest,
	#category : #'Matrix-Benchmarks-Tests'
}

{ #category : #accessing }
MBEigenVectorsTest >> classname [
	^ MBEigenVectors 
]

{ #category : #tests }
MBEigenVectorsTest >> test [

	self testRunAll.
]
