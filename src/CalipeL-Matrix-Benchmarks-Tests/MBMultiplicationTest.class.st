Class {
	#name : #MBMultiplicationTest,
	#superclass : #TestCase,
	#category : #'CalipeL-Matrix-Benchmarks-Tests'
}

{ #category : #tests }
MBMultiplicationTest >> testRunAll [
	(BenchmarkSuite class: MBMultiplication )run.
]
