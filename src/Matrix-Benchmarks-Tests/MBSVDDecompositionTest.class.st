Class {
	#name : #MBSVDDecompositionTest,
	#superclass : #MBAbstractTest,
	#category : #'Matrix-Benchmarks-Tests'
}

{ #category : #accessing }
MBSVDDecompositionTest >> classname [
	^ MBSVDDecomposition  
]

{ #category : #tests }
MBSVDDecompositionTest >> test [

	self testRunAll.
]
