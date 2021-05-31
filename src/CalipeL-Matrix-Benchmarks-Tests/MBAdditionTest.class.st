Class {
	#name : #MBAdditionTest,
	#superclass : #TestCase,
	#category : #'CalipeL-Matrix-Benchmarks-Tests'
}

{ #category : #tests }
MBAdditionTest >> testRunAll [

	(BenchmarkSuite class: MBAddition )run.
]
