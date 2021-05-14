Class {
	#name : #MBPMSymmetricBenchmarkTest,
	#superclass : #TestCase,
	#category : #'Matrix-Benchmark-Tests'
}

{ #category : #test }
MBPMSymmetricBenchmarkTest >> testrandomMatrix [ 
	|aBenchmark time|
	
	aBenchmark := MBPMSymmetricBenchmark new.
	time := aBenchmark randomMatrix.
	self assert: time > 0.
]
