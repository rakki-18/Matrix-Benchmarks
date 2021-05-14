Class {
	#name : #AIRowBenchmarkTest,
	#superclass : #TestCase,
	#category : #'Matrix-Benchmark-Tests'
}

{ #category : #test }
AIRowBenchmarkTest >> testinitialization [
	|aBenchmark time|
	
	aBenchmark := MBAIRowBenchmark new.
	time := aBenchmark initialization.
	self assert: time > 0.
]
