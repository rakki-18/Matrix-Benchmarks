Class {
	#name : #PMSymmetricBenchmarkTest,
	#superclass : #TestCase,
	#category : #'Matrix-Benchmark-Tests'
}

{ #category : #test }
PMSymmetricBenchmarkTest >> testrandomMatrix [ 
	|aBenchmark time|
	
	aBenchmark := MBPMSymmetricBenchmark new.
	time := aBenchmark randomMatrix.
	self assert: time > 0.
]
