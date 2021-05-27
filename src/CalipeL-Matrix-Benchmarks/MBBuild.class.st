Class {
	#name : #MBBuild,
	#superclass : #MBSetup,
	#category : #'CalipeL-Matrix-Benchmarks'
}

{ #category : #benchmarks }
MBBuild >> buildAIMatrix [

	
	<benchmark: 'AIMatrix build'>

	100 timesRepeat:[  AIMatrix new: 500 ].
	
]

{ #category : #benchmarks }
MBBuild >> buildArray2D [

	
	<benchmark: 'Array2D build'>

	100 timesRepeat:[  Array2D new: 500 ].
	
]

{ #category : #benchmarks }
MBBuild >> buildPMMatrix [

	
	<benchmark: 'PMMatrix build'>


	100 timesRepeat:[  PMMatrix new: 500 ].
]
