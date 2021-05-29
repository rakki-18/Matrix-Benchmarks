Class {
	#name : #MBInverseTest,
	#superclass : #TestCase,
	#category : #'CalipeL-Matrix-Benchmarks-Tests'
}

{ #category : #tests }
MBInverseTest >> testRunAll [
	(BenchmarkSuite class: MBInverse  )run.
]
