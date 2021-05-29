Class {
	#name : #MBCompareNonequalTest,
	#superclass : #TestCase,
	#category : #'CalipeL-Matrix-Benchmarks-Tests'
}

{ #category : #tests }
MBCompareNonequalTest >> testRunAll [
	(BenchmarkSuite class: MBCompareNonequal )run.
]
