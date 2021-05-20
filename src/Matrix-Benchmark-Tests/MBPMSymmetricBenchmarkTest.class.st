Class {
	#name : #MBPMSymmetricBenchmarkTest,
	#superclass : #TestCase,
	#instVars : [
		'aBenchmark'
	],
	#category : #'Matrix-Benchmark-Tests'
}

{ #category : #running }
MBPMSymmetricBenchmarkTest >> setUp [
	super setUp.
	
		aBenchmark := MBPMSymmetricBenchmark  new.
]

{ #category : #test }
MBPMSymmetricBenchmarkTest >> testrandomMatrix [ 
	|time|
	

	time := aBenchmark randomMatrix.
	self assert: time > 0.
]

{ #category : #test }
MBPMSymmetricBenchmarkTest >> testridentityMatrix [ 
	|time|
	
	time := aBenchmark identityMatrix .
	self assert: time > 0.
]
