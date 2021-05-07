Class {
	#name : #AIRowBenchmarkTest,
	#superclass : #TestCase,
	#category : #'Matrix-Benchmark-Tests'
}

{ #category : #test }
AIRowBenchmarkTest >> testinitialization [
	|aBenchmark time|
	
	aBenchmark := AIRowBenchmark new.
	time := aBenchmark initialization.
	self assert: time > 0.
]
