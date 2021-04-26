Class {
	#name : #Diagonal,
	#superclass : #Object,
	#category : #'Matrix-Benchmark'
}

{ #category : #benchmarking }
Diagonal >> benchmark [
	"benchmarks initialisation time of Diagonal Matrix class"
			
	| time aArray |
	
	aArray := Array new: 50000.
	1 to: 50000 do: [ :i | aArray at: i put: (10000 random) ].
	
	time := Time millisecondsToRun: [ AIDiagonalMatrix withDiagonal: aArray ].
	
	^ time

]
