Class {
	#name : #PMMatrixBenchmarkTest,
	#superclass : #TestCase,
	#category : #'Matrix-Benchmark-Tests'
}

{ #category : #test }
PMMatrixBenchmarkTest >> testequalMatrix [  
	|aBenchmark time|
	
	aBenchmark := MBPMMatrixBenchmark new.
	time := aBenchmark equalMatrix.
	self assert: time > 0.
]

{ #category : #test }
PMMatrixBenchmarkTest >> testnullMatrix [ 
	|aBenchmark time|
	
	aBenchmark := MBPMMatrixBenchmark new.
	time := aBenchmark nullMatrix.
	self assert: time > 0.
]

{ #category : #test }
PMMatrixBenchmarkTest >> testones [  
	|aBenchmark time|
	
	aBenchmark := MBPMMatrixBenchmark new.
	time := aBenchmark ones.
	self assert: time > 0.
]

{ #category : #test }
PMMatrixBenchmarkTest >> testzeros [
	|aBenchmark time|
	
	aBenchmark := MBPMMatrixBenchmark new.
	time := aBenchmark zeros.
	self assert: time > 0.
]
