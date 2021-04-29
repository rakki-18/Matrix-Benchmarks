Class {
	#name : #AIColumnBenchmark,
	#superclass : #Object,
	#category : #'Matrix-Benchmark'
}

{ #category : #benchmarking }
AIColumnBenchmark >> initialization [
	"benchmarks initialisation time of  AIColumnMatrix class"
			
	| time |
	
	time := Time millisecondsToRun: [ AIColumnMatrix   new:5000 ].
	
	^ time

]
