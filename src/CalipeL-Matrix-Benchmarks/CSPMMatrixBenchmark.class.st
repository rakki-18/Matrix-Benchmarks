Class {
	#name : #CSPMMatrixBenchmark,
	#superclass : #Object,
	#category : #'CalipeL-Matrix-Benchmarks'
}

{ #category : #benchmarking }
CSPMMatrixBenchmark >> equalMatrix [

	<benchmark: 'Equal Matrix initialization'>

	100 timesRepeat:[  PMMatrix rows: 500 columns: 500 element: 10000].
]

{ #category : #benchmarking }
CSPMMatrixBenchmark >> nullMatrix [

	<benchmark: 'Null Matrix initialization'>

	100 timesRepeat:[  PMMatrix rows: 500 columns: 500 ].
]

{ #category : #benchmarking }
CSPMMatrixBenchmark >> ones [

	<benchmark: 'Ones Matrix initialization'>

	100 timesRepeat:[  PMMatrix onesRows: 500 cols: 500 ].
]

{ #category : #benchmarking }
CSPMMatrixBenchmark >> zeros [

	<benchmark: 'Zeros Matrix initialization'>

	100 timesRepeat:[  PMMatrix zerosRows: 500 cols: 500 ].
]
