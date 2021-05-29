Class {
	#name : #MBDivisionTest,
	#superclass : #TestCase,
	#category : #'CalipeL-Matrix-Benchmarks-Tests'
}

{ #category : #tests }
MBDivisionTest >> testRunAll [
	(BenchmarkSuite class: MBDivision  )run.
]
