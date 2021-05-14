Class {
	#name : #MBPMMatrixBenchmarkTest,
	#superclass : #TestCase,
	#instVars : [
		'aBenchmark'
	],
	#category : #'Matrix-Benchmark-Tests'
}

{ #category : #running }
MBPMMatrixBenchmarkTest >> setUp [
	super setUp.
	
	aBenchmark := MBPMMatrixBenchmark new.
]

{ #category : #test }
MBPMMatrixBenchmarkTest >> testequalMatrix [  
	|time|
	
	time := aBenchmark equalMatrix.
	self assert: time > 0.
]

{ #category : #test }
MBPMMatrixBenchmarkTest >> testnullMatrix [ 
	|time|
	
	time := aBenchmark nullMatrix.
	self assert: time > 0.
]

{ #category : #test }
MBPMMatrixBenchmarkTest >> testones [  
	|time|
	
	time := aBenchmark ones.
	self assert: time > 0.
]

{ #category : #test }
MBPMMatrixBenchmarkTest >> testzeros [
	|time|
	
	time := aBenchmark zeros.
	self assert: time > 0.
]
