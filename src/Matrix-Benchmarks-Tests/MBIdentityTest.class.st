Class {
	#name : #MBIdentityTest,
	#superclass : #MBAbstractTest,
	#category : #'Matrix-Benchmarks-Tests'
}

{ #category : #accessing }
MBIdentityTest >> classname [
	^ MBIdentity 
]

{ #category : #tests }
MBIdentityTest >> test [

	self testRunAll.
]
