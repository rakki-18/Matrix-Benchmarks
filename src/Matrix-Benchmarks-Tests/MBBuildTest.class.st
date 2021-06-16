Class {
	#name : #MBBuildTest,
	#superclass : #MBAbstractTest,
	#category : #'Matrix-Benchmarks-Tests'
}

{ #category : #accessing }
MBBuildTest >> classname [
	^ MBBuild
]

{ #category : #tests }
MBBuildTest >> test [

	self testRunAll.
]
