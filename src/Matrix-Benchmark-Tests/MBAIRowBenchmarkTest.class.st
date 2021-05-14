Class {
	#name : #MBAIRowBenchmarkTest,
	#superclass : #TestCase,
	#category : #'Matrix-Benchmark-Tests'
}

{ #category : #test }
MBAIRowBenchmarkTest >> testinitialization [
	|aBenchmark time|
	
	aBenchmark := MBAIRowBenchmark new.
	time := aBenchmark initialization.
	self assert: time > 0.
]
