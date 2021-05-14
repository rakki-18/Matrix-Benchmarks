Class {
	#name : #MBAISymetricBenchmarkTest,
	#superclass : #TestCase,
	#category : #'Matrix-Benchmark-Tests'
}

{ #category : #test }
MBAISymetricBenchmarkTest >> testinitialization [
	|aBenchmark time|
	
	aBenchmark := MBAISymetricBenchmark  new.
	time := aBenchmark initialization.
	self assert: time > 0.
]
