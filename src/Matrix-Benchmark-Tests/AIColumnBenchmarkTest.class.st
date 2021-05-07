Class {
	#name : #AIColumnBenchmarkTest,
	#superclass : #TestCase,
	#category : #'Matrix-Benchmark-Tests'
}

{ #category : #test }
AIColumnBenchmarkTest >> testinitialization [
	|aBenchmark time|
	
	aBenchmark := AIColumnBenchmark new.
	time := aBenchmark initialization.
	self assert: time > 0.
]
