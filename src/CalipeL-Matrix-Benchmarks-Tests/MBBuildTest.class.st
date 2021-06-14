Class {
	#name : #MBBuildTest,
	#superclass : #MBAbstractTest,
	#category : #'CalipeL-Matrix-Benchmarks-Tests'
}

{ #category : #accessing }
MBBuildTest >> classname [
	^ MBBuild
]

{ #category : #tests }
MBBuildTest >> test [

	self testRunAll.
]
