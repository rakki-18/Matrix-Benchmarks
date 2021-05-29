Class {
	#name : #MBMatrixMultiplicationTest,
	#superclass : #TestCase,
	#category : #'CalipeL-Matrix-Benchmarks-Tests'
}

{ #category : #tests }
MBMatrixMultiplicationTest >> testRunAll [
	(BenchmarkSuite class: MBMatrixMultiplication )run.
]
