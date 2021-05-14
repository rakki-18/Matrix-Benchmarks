Class {
	#name : #MBAIColumnBenchmark,
	#superclass : #Object,
	#category : #'Matrix-Benchmark'
}

{ #category : #benchmarking }
MBAIColumnBenchmark >> initialization [
	"benchmarks initialisation time of  AIColumnMatrix class"
			
	| time |
	
	time := Time millisecondsToRun: [ AIColumnMatrix   new:5000 ].
	
	^ time

]
