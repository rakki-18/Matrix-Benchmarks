Class {
	#name : #MBAccessTest,
	#superclass : #MBAbstractTest,
	#category : #'CalipeL-Matrix-Benchmarks-Tests'
}

{ #category : #accessing }
MBAccessTest >> classname [
	^ MBAccess
]

{ #category : #tests }
MBAccessTest >> test [

	self testRunAll.
]
