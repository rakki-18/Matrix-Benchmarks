Class {
	#name : #Identity,
	#superclass : #Object,
	#category : #'Matrix-Benchmark'
}

{ #category : #benchmarking }
Identity >> benchmark [
	
	" benchmarking initialisation time of Identity matrix"
			
	| time |
	
	time := Time millisecondsToRun: [ Array2D identity: 5000 ].
	^ time
]
