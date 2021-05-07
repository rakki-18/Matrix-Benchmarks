Class {
	#name : #PMMatrixBenchmark,
	#superclass : #Object,
	#category : #'Matrix-Benchmark'
}

{ #category : #benchmarking }
PMMatrixBenchmark >> equalMatrix [

	| time |
	
	time := Time millisecondsToRun: [ PMMatrix rows: 5000 columns: 5000 element: 10000].
	^ time
]

{ #category : #benchmarking }
PMMatrixBenchmark >> nullMatrix [

	| time |
	
	time := Time millisecondsToRun: [ PMMatrix rows: 5000 columns: 5000 ].
	^ time
]

{ #category : #benchmarking }
PMMatrixBenchmark >> ones [

	| time |
	
	time := Time millisecondsToRun: [ PMMatrix onesRows: 5000 cols: 5000 ].
	^ time
]

{ #category : #benchmarking }
PMMatrixBenchmark >> zeros [

	| time |
	time := Time millisecondsToRun: [ PMMatrix zerosRows: 5000 cols: 5000].
	^ time
]
