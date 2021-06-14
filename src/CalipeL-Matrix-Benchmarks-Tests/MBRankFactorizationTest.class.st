Class {
	#name : #MBRankFactorizationTest,
	#superclass : #MBAbstractTest,
	#category : #'CalipeL-Matrix-Benchmarks-Tests'
}

{ #category : #accessing }
MBRankFactorizationTest >> classname [
	^ MBRankFactorization  
]

{ #category : #tests }
MBRankFactorizationTest >> test [

	self testRunAll.
]
