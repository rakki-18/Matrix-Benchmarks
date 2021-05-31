Class {
	#name : #MBAdditionTest,
	#superclass : #TestCase,
	#category : #'CalipeL-Matrix-Benchmarks-Tests'
}

{ #category : #tests }
MBAdditionTest >> testRunAll [
	self assert: [ 3 < 1 ].
	(BenchmarkSuite class: MBAddition )run.
]
