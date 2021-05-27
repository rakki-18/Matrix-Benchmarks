Class {
	#name : #MBBuildZeros,
	#superclass : #MBSetup,
	#category : #'CalipeL-Matrix-Benchmarks'
}

{ #category : #benchmarks }
MBBuildZeros >> buildZeroAIMatrix [

	
	<benchmark: 'AIMatrix build with zeros'>

	100 timesRepeat:[  AIMatrix new: 500 withAll: 0].
	
]

{ #category : #benchmarks }
MBBuildZeros >> buildZeroArray2D [

	
	<benchmark: 'Array2D build with zeros'>

	100 timesRepeat:[  Array2D zeros: 500 ].
	
]

{ #category : #benchmarks }
MBBuildZeros >> buildZeroPMMatrix [

	
	<benchmark: 'PMMatrix build with zeros'>


	100 timesRepeat:[  PMMatrix zerosRows: 500 cols: 500].
]