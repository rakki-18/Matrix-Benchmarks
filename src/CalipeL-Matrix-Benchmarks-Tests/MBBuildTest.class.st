Class {
	#name : #MBBuildTest,
	#superclass : #TestCase,
	#category : #'CalipeL-Matrix-Benchmarks-Tests'
}

{ #category : #tests }
MBBuildTest >> testRunAll [
	(BenchmarkSuite class: MBBuild )run.
]
