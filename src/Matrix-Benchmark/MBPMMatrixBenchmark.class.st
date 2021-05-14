Class {
	#name : #MBPMMatrixBenchmark,
	#superclass : #Object,
	#category : #'Matrix-Benchmark'
}

{ #category : #benchmarking }
MBPMMatrixBenchmark >> equalMatrix [

	| time |
	
	time := Time millisecondsToRun: [ PMMatrix rows: 5000 columns: 5000 element: 10000].
	^ time
]

{ #category : #benchmarking }
MBPMMatrixBenchmark >> nullMatrix [

	| time |
	
	time := Time millisecondsToRun: [ PMMatrix rows: 5000 columns: 5000 ].
	^ time
]

{ #category : #benchmarking }
MBPMMatrixBenchmark >> ones [

	| time |
	
	time := Time millisecondsToRun: [ PMMatrix onesRows: 5000 cols: 5000 ].
	^ time
]

{ #category : #benchmarking }
MBPMMatrixBenchmark >> zeros [

	| time |
	time := Time millisecondsToRun: [ PMMatrix zerosRows: 5000 cols: 5000].
	^ time
]
