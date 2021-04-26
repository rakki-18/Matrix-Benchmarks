Class {
	#name : #EqualMatrix,
	#superclass : #Object,
	#category : #'Matrix-Benchmark'
}

{ #category : #benchmarking }
EqualMatrix >> benchmark [
	"benchmarks initialisation time of a Matrix with equal elements "

			
	|time |
	
	time := Time millisecondsToRun: [ Array2D new: 5000 element: (10000 random) ].
	
	^ time.

]
