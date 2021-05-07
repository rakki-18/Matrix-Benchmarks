Class {
	#name : #PMSymmetricBenchmarkTest,
	#superclass : #TestCase,
	#category : #'Matrix-Benchmark-Tests'
}

{ #category : #test }
PMSymmetricBenchmarkTest >> testrandomMatrix [ 
	|aBenchmark time|
	
	aBenchmark := PMSymmetricBenchmark new.
	time := aBenchmark randomMatrix.
	self assert: time > 0.
]
