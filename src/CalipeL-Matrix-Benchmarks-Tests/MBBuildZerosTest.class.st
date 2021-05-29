Class {
	#name : #MBBuildZerosTest,
	#superclass : #TestCase,
	#category : #'CalipeL-Matrix-Benchmarks-Tests'
}

{ #category : #tests }
MBBuildZerosTest >> testRunAll [
	(BenchmarkSuite class: MBBuildZeros )run.
]
