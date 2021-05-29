Class {
	#name : #MBSubtractionTest,
	#superclass : #TestCase,
	#category : #'CalipeL-Matrix-Benchmarks-Tests'
}

{ #category : #tests }
MBSubtractionTest >> testRunAll [
	(BenchmarkSuite class: MBSubtraction )run.
]
