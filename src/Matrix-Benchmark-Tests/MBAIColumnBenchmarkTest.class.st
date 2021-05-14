Class {
	#name : #MBAIColumnBenchmarkTest,
	#superclass : #TestCase,
	#instVars : [
		'aBenchmark'
	],
	#category : #'Matrix-Benchmark-Tests'
}

{ #category : #running }
MBAIColumnBenchmarkTest >> setUp [
	super setUp.
	
	aBenchmark := MBAIColumnBenchmark new.
]

{ #category : #test }
MBAIColumnBenchmarkTest >> testinitialization [
	| time|
	
	time := aBenchmark initialization.
	self assert: time > 0.
]
