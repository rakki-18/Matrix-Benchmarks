Class {
	#name : #MBSVDDecompositionTest,
	#superclass : #MBAbstractTest,
	#category : #'CalipeL-Matrix-Benchmarks-Tests'
}

{ #category : #accessing }
MBSVDDecompositionTest >> classname [
	^ MBSVDDecomposition  
]

{ #category : #tests }
MBSVDDecompositionTest >> test [

	self testRunAll.
]
