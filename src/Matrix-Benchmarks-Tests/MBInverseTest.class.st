Class {
	#name : #MBInverseTest,
	#superclass : #MBAbstractTest,
	#category : #'Matrix-Benchmarks-Tests'
}

{ #category : #accessing }
MBInverseTest >> classname [
	^ MBInverse 
]

{ #category : #tests }
MBInverseTest >> test [

	self testRunAll.
]
