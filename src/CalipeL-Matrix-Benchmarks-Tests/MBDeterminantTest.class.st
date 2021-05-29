Class {
	#name : #MBDeterminantTest,
	#superclass : #TestCase,
	#category : #'CalipeL-Matrix-Benchmarks-Tests'
}

{ #category : #tests }
MBDeterminantTest >> testRunAll [
	(BenchmarkSuite class: MBDeterminant )run.
]
