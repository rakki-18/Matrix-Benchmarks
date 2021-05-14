Class {
	#name : #MBAISymetricBenchmark,
	#superclass : #Object,
	#category : #'Matrix-Benchmark'
}

{ #category : #benchmarking }
MBAISymetricBenchmark >> initialization [
	"benchmarks initialisation time of AISymetricMatrix class"
			
	| time |
	
	time := Time millisecondsToRun: [ AISymetricMatrix  new:5000 ].
	
	^ time

]
