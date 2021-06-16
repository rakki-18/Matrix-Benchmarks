Class {
	#name : #MBTraceTest,
	#superclass : #MBAbstractTest,
	#category : #'Matrix-Benchmarks-Tests'
}

{ #category : #accessing }
MBTraceTest >> classname [
	^ MBTrace 
]

{ #category : #tests }
MBTraceTest >> test [

	self testRunAll.
]
