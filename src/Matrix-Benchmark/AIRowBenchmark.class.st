Class {
	#name : #AIRowBenchmark,
	#superclass : #Object,
	#category : #'Matrix-Benchmark'
}

{ #category : #benchmarking }
AIRowBenchmark >> initialization [
	"benchmarks initialisation time of  AIRowMatrix class"
			
	| time |
	
	time := Time millisecondsToRun: [ AIRowMatrix    new:5000 ].
	
	^ time

]
