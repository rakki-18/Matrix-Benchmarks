Class {
	#name : #MBTransposeTest,
	#superclass : #TestCase,
	#category : #'CalipeL-Matrix-Benchmarks-Tests'
}

{ #category : #tests }
MBTransposeTest >> testRunAll [
	(BenchmarkSuite class: MBTranspose )run.
]
