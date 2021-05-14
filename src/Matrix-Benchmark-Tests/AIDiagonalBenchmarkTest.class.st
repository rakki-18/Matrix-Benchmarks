Class {
	#name : #AIDiagonalBenchmarkTest,
	#superclass : #TestCase,
	#category : #'Matrix-Benchmark-Tests'
}

{ #category : #test }
AIDiagonalBenchmarkTest >> testinitialization [
	|aBenchmark time|
	
	aBenchmark := MBAIRowBenchmark  new.
	time := aBenchmark initialization.
	self assert: time > 0.
]
