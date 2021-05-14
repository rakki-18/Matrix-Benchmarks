Class {
	#name : #MBArray2DBenchmark,
	#superclass : #Object,
	#category : #'Matrix-Benchmark'
}

{ #category : #benchmarking }
Array2DBenchmark >> columnVector [
	"benchmarking column vector initialization in Array2D"
	| time aArray |
	
	aArray := Array new: 50000.
	1 to: 50000 do: [ :i | aArray at: i put: (10000 random) ].
	time := Time millisecondsToRun: [ Array2D columnVector: aArray  ].
	^ time
]

{ #category : #benchmarking }
Array2DBenchmark >> diagonal [
	
	"benchmarking diagonal matrix initialization in Array2D"
	| time aArray |
	
	aArray := Array new: 10000.
	1 to: 10000 do: [ :i | aArray at: i put: (10000 random) ].
	
	time := Time millisecondsToRun: [ Array2D  diagonal: aArray ].
	
	^ time
]

{ #category : #benchmarking }
Array2DBenchmark >> equalMatrix [
	"benchmarks initialisation time of a Matrix with equal elements "

			
	|time |
	
	time := Time millisecondsToRun: [ Array2D new: 5000 element: (10000 random) ].
	
	^ time.
]

{ #category : #benchmarking }
Array2DBenchmark >> identity [
	" benchmarking initialisation time of Identity matrix"
			
	| time |
	
	time := Time millisecondsToRun: [ Array2D identity: 5000 ].
	^ time
]

{ #category : #benchmarking }
Array2DBenchmark >> nullMatrix [
	"benchmarking initialization in Array2D with nil values"
	| time |
	
	time := Time millisecondsToRun: [ Array2D rows: 5000 columns: 5000 ].
	^ time
]

{ #category : #benchmarking }
Array2DBenchmark >> randomMatrix [
	"benchmarking initialization in Array2D with nil values"
	| time |
	
	time := Time millisecondsToRun: [ Array2D rows: 5000 columns: 5000 tabulate: [:i :j | (10000 random)]].
	^ time
]

{ #category : #benchmarking }
Array2DBenchmark >> rowVector [
	"benchmarking row vector initialization in Array2D"
	| time aArray |
	
	aArray := Array new: 50000.
	1 to: 50000 do: [ :i | aArray at: i put: (10000 random) ].
	time := Time millisecondsToRun: [ Array2D rowVector: aArray  ].
	^ time
]
