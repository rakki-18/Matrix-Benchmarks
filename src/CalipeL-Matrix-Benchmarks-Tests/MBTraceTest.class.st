Class {
	#name : #MBTraceTest,
	#superclass : #MBAbstractTest,
	#category : #'CalipeL-Matrix-Benchmarks-Tests'
}

{ #category : #accessing }
MBTraceTest >> classname [
	^ MBTrace 
]

{ #category : #tests }
MBTraceTest >> test [

	self testRunAll.
]
