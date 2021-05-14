Class {
	#name : #MBAIDiagonalBenchmarkTest,
	#superclass : #TestCase,
	#category : #'Matrix-Benchmark-Tests'
}

{ #category : #test }
MBAIDiagonalBenchmarkTest >> testinitialization [
	|aBenchmark time|
	
	aBenchmark := MBAIRowBenchmark  new.
	time := aBenchmark initialization.
	self assert: time > 0.
]
