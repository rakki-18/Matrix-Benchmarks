Class {
	#name : #MBAdditionTest,
	#superclass : #MBAbstractTest,
	#category : #'CalipeL-Matrix-Benchmarks-Tests'
}

{ #category : #accessing }
MBAdditionTest >> classname [
	^ MBAddition
]

{ #category : #tests }
MBAdditionTest >> test [

	self testRunAll.
]
