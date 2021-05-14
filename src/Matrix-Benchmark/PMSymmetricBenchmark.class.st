Class {
	#name : #MBPMSymmetricBenchmark,
	#superclass : #Object,
	#category : #'Matrix-Benchmark'
}

{ #category : #benchmarking }
PMSymmetricBenchmark >> randomMatrix [
	"benchmarks initialisation time of PMSymmetric Matrix class with random elements"

			
	|time|
   	time:= Time millisecondsToRun: [ PMSymmetricMatrix new: 5000 random: 10000].
	^ time

]
