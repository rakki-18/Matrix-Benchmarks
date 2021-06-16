Class {
	#name : #MBAccessTest,
	#superclass : #MBAbstractTest,
	#category : #'Matrix-Benchmarks-Tests'
}

{ #category : #accessing }
MBAccessTest >> classname [
	^ MBAccess
]

{ #category : #tests }
MBAccessTest >> test [

	self testRunAll.
]
