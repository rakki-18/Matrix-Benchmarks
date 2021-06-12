Class {
	#name : #CSArray2DBenchmark,
	#superclass : #CSAbstractMatrixBenchmark,
	#category : #'CalipeL-Matrix-Benchmarks'
}

{ #category : #benchmarking }
CSArray2DBenchmark >> columnVector [
	"benchmarking column vector initialization in Array2D"
	
	<benchmark: 'Column Vector initialization'>
	<setup: #vectorSetup>

	100 timesRepeat:[ Array2D columnVector: aArray].
]

{ #category : #benchmarking }
CSArray2DBenchmark >> diagonal [

	
	<benchmark: 'Diagonal Matrix initialization'>
	<setup: #vectorSetup>

	self initRepetitions  timesRepeat:[  Array2D  diagonal: aArray].
]

{ #category : #benchmarking }
CSArray2DBenchmark >> equalMatrix [

	
	<benchmark: 'Equal Matrix initialization'>


	self initRepetitions  timesRepeat:[  Array2D new: self elementSize  element: (10000 random)].
]

{ #category : #benchmarking }
CSArray2DBenchmark >> identity [

	
	<benchmark: 'Identity Matrix initialization'>


	self initRepetitions  timesRepeat:[  Array2D identity: self elementSize].
]

{ #category : #benchmarking }
CSArray2DBenchmark >> nullMatrix [

	
	<benchmark: 'Null Matrix initialization'>


	self initRepetitions  timesRepeat:[  Array2D rows: self elementSize  columns: self elementSize].
]

{ #category : #benchmarking }
CSArray2DBenchmark >> randomMatrix [

	
	<benchmark: 'Random Matrix initialization'>


	100 timesRepeat:[  Array2D rows: self elementSize columns: self elementSize tabulate: [:i :j | (10000 random)]].
]

{ #category : #benchmarking }
CSArray2DBenchmark >> rowVector [

	
	<benchmark: 'Row Vector initialization'>
	<setup: #vectorSetup>

	self initRepetitions timesRepeat:[ Array2D columnVector: aArray].
]
