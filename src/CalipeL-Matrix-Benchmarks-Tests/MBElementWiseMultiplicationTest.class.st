Class {
	#name : #MBElementWiseMultiplicationTest,
	#superclass : #TestCase,
	#category : #'CalipeL-Matrix-Benchmarks-Tests'
}

{ #category : #tests }
MBElementWiseMultiplicationTest >> testRunAll [
	(BenchmarkSuite class: MBElementWiseMultiplication )run.
]
