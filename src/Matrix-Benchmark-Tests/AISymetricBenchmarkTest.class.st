Class {
	#name : #AISymetricBenchmarkTest,
	#superclass : #TestCase,
	#category : #'Matrix-Benchmark-Tests'
}

{ #category : #test }
AISymetricBenchmarkTest >> testinitialization [
	|aBenchmark time|
	
	aBenchmark := AISymetricBenchmark  new.
	time := aBenchmark initialization.
	self assert: time > 0.
]
