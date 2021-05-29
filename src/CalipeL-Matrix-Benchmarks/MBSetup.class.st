Class {
	#name : #MBSetup,
	#superclass : #Object,
	#instVars : [
		'a1',
		'a2',
		'aNumber'
	],
	#category : #'CalipeL-Matrix-Benchmarks'
}

{ #category : #setupOneMatrix }
MBSetup >> setupAIMatrix [


	a1 := AIMatrix new: 500.

	
	1 to: 500 do: [ :i | 
		1 to: 500 do: [ :j |
			a1 at: i and: j put: (10000 random) ] ].
	
	
]

{ #category : #setupMatrixandNumber }
MBSetup >> setupAIMatrixandNumber [

	aNumber := (10000 random).
	a1 := AIMatrix new: 500.

	
	1 to: 500 do: [ :i | 
		1 to: 500 do: [ :j |
			a1 at: i and: j put: (10000 random) ] ].
	
	
]

{ #category : #setupOneMatrix }
MBSetup >> setupArray2D [


	a1 := Array2D new: 500.
	
	1 to: 500 do: [ :i | 
		1 to: 500 do: [ :j |
			a1 at: i at: j put: (10000 random) ] ].
	
]

{ #category : #setupMatrixandNumber }
MBSetup >> setupArray2DandNumber [

	aNumber := (10000 random).
	a1 := Array2D new: 500.
	
	1 to: 500 do: [ :i | 
		1 to: 500 do: [ :j |
			a1 at: i at: j put: (10000 random) ] ].
	
]

{ #category : #setupOneMatrix }
MBSetup >> setupPMMatrix [



	a1 := PMMatrix new: 500.
	
	1 to: 500 do: [ :i | 
		1 to: 500 do: [ :j |
			a1 at: i at: j put: (10000 random) ] ].
	
]

{ #category : #setupMatrixandNumber }
MBSetup >> setupPMMatrixandNumber [


	aNumber := (10000 random).
	a1 := PMMatrix new: 500.
	
	1 to: 500 do: [ :i | 
		1 to: 500 do: [ :j |
			a1 at: i at: j put: (10000 random) ] ].
	
]

{ #category : #setupSmall }
MBSetup >> setupSmallPMMatrix [


	a1 := PMMatrix new: 100.
	
	1 to: 100 do: [ :i | 
		1 to: 100 do: [ :j |
			a1 at: i at: j put: (10 random) ] ].
	
]

{ #category : #setupTwoMatrix }
MBSetup >> setuptwoAIMatrix [


	a1 := AIMatrix new: 500.
	a2 := AIMatrix new: 500.
	
	1 to: 500 do: [ :i | 
		1 to: 500 do: [ :j |
			a1 at: i and: j put: (10000 random) ] ].
	
	1 to: 500 do: [ :i | 
		1 to: 500 do: [ :j |
			a2 at: i and: j put: (10000 random) ] ].
]

{ #category : #setupTwoMatrix }
MBSetup >> setuptwoArray2D [


	a1 := Array2D new: 500.
	a2 := Array2D new: 500.
	
	1 to: 500 do: [ :i | 
		1 to: 500 do: [ :j |
			a1 at: i at: j put: (10000 random) ] ].
	
	1 to: 500 do: [ :i | 
		1 to: 500 do: [ :j |
			a2 at: i at: j put: (10000 random) ] ].
]

{ #category : #setupTwoMatrix }
MBSetup >> setuptwoPMMatrix [


	a1 := PMMatrix new: 500.
	a2 := PMMatrix new: 500.
	
	1 to: 500 do: [ :i | 
		1 to: 500 do: [ :j |
			a1 at: i at: j put: (10000 random) ] ].
	
	1 to: 500 do: [ :i | 
		1 to: 500 do: [ :j |
			a2 at: i at: j put: (10000 random) ] ].
]
