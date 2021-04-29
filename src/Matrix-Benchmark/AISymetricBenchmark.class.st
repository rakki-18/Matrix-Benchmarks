Class {
	#name : #AISymetricBenchmark,
	#superclass : #Object,
	#category : #'Matrix-Benchmark'
}

{ #category : #benchmarking }
AISymetricBenchmark >> initialization [
	"benchmarks initialisation time of AISymetricMatrix class"
			
	| time |
	
	time := Time millisecondsToRun: [ AISymetricMatrix  new:5000 ].
	
	^ time

]
