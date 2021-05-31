Class {
	#name : #MBBuild,
	#superclass : #MBSetup,
	#category : #'CalipeL-Matrix-Benchmarks'
}

{ #category : #benchmarks }
MBBuild >> buildAIColumnMatrix [

	
	<benchmark: 'AIColumnMatrix build'>

	100 timesRepeat:[  AIColumnMatrix new: 500 ].
	
]

{ #category : #benchmarks }
MBBuild >> buildAIRowMatrix [

	
	<benchmark: 'AIRowMatrix build'>

	100 timesRepeat:[  AIRowMatrix new: 500 ].
	
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

{ #category : #benchmarks }
MBBuild >> buildPMSymmetricMatrix [

	
	<benchmark: 'PMSymmetricMatrix build'>


	100 timesRepeat:[  PMSymmetricMatrix new: 500 ].
]
