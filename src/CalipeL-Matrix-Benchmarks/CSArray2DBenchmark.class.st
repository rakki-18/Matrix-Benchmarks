Class {
	#name : #CSArray2DBenchmark,
	#superclass : #Object,
	#instVars : [
		'aArray'
	],
	#category : #'CalipeL-Matrix-Benchmarks'
}

{ #category : #setup }
CSArray2DBenchmark >> VectorSetup [


	aArray := Array new: 500.
	1 to: 500 do: [ :i | aArray at: i put: (10000 random) ].
]

{ #category : #benchmarking }
CSArray2DBenchmark >> columnVector [
	"benchmarking column vector initialization in Array2D"
	
	<benchmark: 'Column Vector initialization'>
	<setup: #VectorSetup>

	100 timesRepeat:[ Array2D columnVector: aArray].
]

{ #category : #benchmarking }
CSArray2DBenchmark >> diagonal [

	
	<benchmark: 'Diagonal Matrix initialization'>
	<setup: #VectorSetup>

	100 timesRepeat:[  Array2D  diagonal: aArray].
]

{ #category : #benchmarking }
CSArray2DBenchmark >> equalMatrix [

	
	<benchmark: 'Equal Matrix initialization'>


	100 timesRepeat:[  Array2D new: 500 element: (10000 random)].
]

{ #category : #benchmarking }
CSArray2DBenchmark >> identity [

	
	<benchmark: 'Identity Matrix initialization'>


	100 timesRepeat:[  Array2D identity: 500].
]

{ #category : #benchmarking }
CSArray2DBenchmark >> nullMatrix [

	
	<benchmark: 'Null Matrix initialization'>


	100 timesRepeat:[  Array2D rows: 500 columns: 500].
]

{ #category : #benchmarking }
CSArray2DBenchmark >> randomMatrix [

	
	<benchmark: 'Random Matrix initialization'>


	100 timesRepeat:[  Array2D rows: 500 columns: 500 tabulate: [:i :j | (10000 random)]].
]

{ #category : #benchmarking }
CSArray2DBenchmark >> rowVector [

	
	<benchmark: 'Row Vector initialization'>
	<setup: #VectorSetup>

	100 timesRepeat:[ Array2D columnVector: aArray].
]
