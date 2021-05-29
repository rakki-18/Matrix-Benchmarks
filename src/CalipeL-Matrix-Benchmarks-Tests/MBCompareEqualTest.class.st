Class {
	#name : #MBCompareEqualTest,
	#superclass : #TestCase,
	#category : #'CalipeL-Matrix-Benchmarks-Tests'
}

{ #category : #tests }
MBCompareEqualTest >> testRunAll [
	(BenchmarkSuite class: MBCompareEqual )run.
]
