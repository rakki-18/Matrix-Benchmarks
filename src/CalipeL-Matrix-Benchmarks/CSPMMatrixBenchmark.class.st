Class {
	#name : #CSPMMatrixBenchmark,
	#superclass : #CSAbstractMatrixBenchmark,
	#category : #'CalipeL-Matrix-Benchmarks'
}

{ #category : #benchmarking }
CSPMMatrixBenchmark >> equalMatrix [

	<benchmark: 'Equal Matrix initialization'>

	self initRepetitions timesRepeat:[  PMMatrix rows: self elementSize columns: self elementSize element: 10000].
]

{ #category : #benchmarking }
CSPMMatrixBenchmark >> nullMatrix [

	<benchmark: 'Null Matrix initialization'>

	self initRepetitions timesRepeat:[  PMMatrix rows: self elementSize columns: self elementSize ].
]

{ #category : #benchmarking }
CSPMMatrixBenchmark >> ones [

	<benchmark: 'Ones Matrix initialization'>

	self initRepetitions timesRepeat:[  PMMatrix onesRows: self elementSize cols: self elementSize ].
]

{ #category : #benchmarking }
CSPMMatrixBenchmark >> zeros [

	<benchmark: 'Zeros Matrix initialization'>

	self initRepetitions timesRepeat: [  PMMatrix zerosRows: self elementSize cols: self elementSize ].
]
