Class {
	#name : #MBAccessTest,
	#superclass : #TestCase,
	#category : #'CalipeL-Matrix-Benchmarks-Tests'
}

{ #category : #tests }
MBAccessTest >> testRunAll [
	(BenchmarkSuite class: MBAccess )run.
]
