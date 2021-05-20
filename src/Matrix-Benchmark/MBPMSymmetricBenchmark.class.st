Class {
	#name : #MBPMSymmetricBenchmark,
	#superclass : #Object,
	#category : #'Matrix-Benchmark'
}

{ #category : #benchmarking }
MBPMSymmetricBenchmark >> identityMatrix [
	"benchmarks initialisation time of an identity PMSymmetric Matrix"

			
	|time|
   	time:= Time millisecondsToRun: [ PMSymmetricMatrix identity:  5000 ].
	^ time

]

{ #category : #benchmarking }
MBPMSymmetricBenchmark >> randomMatrix [
	"benchmarks initialisation time of PMSymmetric Matrix class with random elements"

			
	|time|
   	time:= Time millisecondsToRun: [ PMSymmetricMatrix new: 5000 random: 10000].
	^ time

]
