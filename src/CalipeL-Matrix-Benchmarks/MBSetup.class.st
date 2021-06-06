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

{ #category : #'running - benchmark' }
MBSetup class >> runAllBenchmarks [

	|aBenchmark data chart names|

	aBenchmark  := (BenchmarkSuite class: self new class ) run.
	data := aBenchmark outcomes collect: [ :each | (( each measurements at: 1) at: 3) value].
	names := aBenchmark outcomes collect: [ :each | each benchmark name].
	
	chart := RSChart new.

	chart barHeights: data.
	chart addDecoration: (RSYLabelDecoration  new title: 'Time'; offset: -15).
	chart addDecoration: (RSVerticalTick new integer).
	chart addDecoration: (RSHorizontalTick new fromNames: names).
	chart title: self className.
	^ chart open.


]

{ #category : #setupOneMatrix }
MBSetup >> setupAIColumnMatrix [


	a1 := AIColumnMatrix new: 500.

	
	1 to: 500 do: [ :i | 
		1 to: 500 do: [ :j |
			a1 at: i and: j put: (10000 random) ] ].
	
	
]

{ #category : #setupMatrixandNumber }
MBSetup >> setupAIColumnMatrixandNumber [ 

	aNumber := (10000 random).
	a1 := AIColumnMatrix new: 500.

	
	1 to: 500 do: [ :i | 
		1 to: 500 do: [ :j |
			a1 at: i and: j put: (10000 random) ] ].
	
	
]

{ #category : #setupOneMatrix }
MBSetup >> setupAIDiagonalMatrix [


	|aArray|
	aArray := Array new: 500.
	1 to: 500 do: [ :i | aArray at: i put: (10000 random) ].
	
	a1 := AIDiagonalMatrix withDiagonal: aArray.
	
]

{ #category : #setupMatrixandNumber }
MBSetup >> setupAIDiagonalMatrixandNumber [

	|aArray|
	aArray := Array new: 500.
	1 to: 500 do: [ :i | aArray at: i put: (10000 random) ].

	aNumber := (10000 random).
	
	a1 := AIDiagonalMatrix withDiagonal: aArray.
	
]

{ #category : #setupOneMatrix }
MBSetup >> setupAIRowMatrix [


	a1 := AIRowMatrix new: 500.

	
	1 to: 500 do: [ :i | 
		1 to: 500 do: [ :j |
			a1 at: i and: j put: (10000 random) ] ].
	
	
]

{ #category : #setupMatrixandNumber }
MBSetup >> setupAIRowMatrixandNumber [

	aNumber := (10000 random).
	a1 := AIRowMatrix new: 500.

	
	1 to: 500 do: [ :i | 
		1 to: 500 do: [ :j |
			a1 at: i and: j put: (10000 random) ] ].
	
	
]

{ #category : #setupOneMatrix }
MBSetup >> setupAISymetricMatrix [


	a1 := AISymetricMatrix new: 500.

	1 to: 500 do: [ :i | 
		1 to: i do: [ :j |
			a1 at: i and: j put: (10000 random) ] ].
	
	1 to: 500 do: [ :i|
		i+1 to: 500 do:[:j|
			a1 at: i and: j put: (a1 at:j and: i) ] ].
	
	
]

{ #category : #setupMatrixandNumber }
MBSetup >> setupAISymetricMatrixandNumber [

	aNumber := (10000 random).
	a1 := AISymetricMatrix new: 500.
	1 to: 500 do: [ :i | 
		1 to: i do: [ :j |
			a1 at: i and: j put: (10000 random) ] ].
	
	1 to: 500 do: [ :i|
		i+1 to: 500 do:[:j|
			a1 at: i and: j put: (a1 at:j and: i) ] ].
	
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

{ #category : #setupSpecial }
MBSetup >> setupInvertiblePMMatrix [
	" 2 triangular matrices( upper and lower) are generated.
	They are multipied to generate the invertible matrix"
	
	|l u size|
	
	size := 100.
	l := PMMatrix zerosRows: size cols: size.
	
	1 to: size do: [ :i|
	1 to: i-1 do:[ :j|
		l at: i at: j put: (100 random)
		 ]].
	" principal diagonal elements can not be zero"
	1 to: size do: [ :i|
	l at: i at: i put: (100 random)+1 ].

	u := PMMatrix zerosRows: size cols: size.

	1 to: size do: [ :i|
		i+1 to: size do:[ :j|
			u at: i at: j put: (100 random)
		 ]].
	1 to: size do: [ :i|
		u at: i at: i put: (100 random)+1 ].

	a1 := l*u.

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

{ #category : #setupOneMatrix }
MBSetup >> setupPMSymmetricMatrix [



	a1 := PMSymmetricMatrix new: 500.
	
	1 to: 500 do: [ :i | 
		1 to: i do: [ :j |
			a1 at: i at: j put: (10000 random) ] ].
	
	1 to: 500 do: [ :i|
		i+1 to: 500 do:[:j|
			a1 at: i at: j put: (a1 at:j at: i) ] ].
	
]

{ #category : #setupMatrixandNumber }
MBSetup >> setupPMSymmetricMatrixandNumber [


	aNumber := (10000 random).
	a1 := PMSymmetricMatrix new: 500.
	
	1 to: 500 do: [ :i | 
		1 to: i do: [ :j |
			a1 at: i at: j put: (10000 random) ] ].
	
	1 to: 500 do: [ :i|
		i+1 to: 500 do:[:j|
			a1 at: i at: j put: (a1 at:j at: i) ] ].
	
]

{ #category : #setupSmall }
MBSetup >> setupSmallPMMatrix [


	a1 := PMMatrix new: 100.
	
	1 to: 100 do: [ :i | 
		1 to: 100 do: [ :j |
			a1 at: i at: j put: (10 random) ] ].
	
]

{ #category : #setupSmall }
MBSetup >> setupSmallPMSymmetricMatrix [


	a1 := PMSymmetricMatrix new: 100.
	1 to: 100 do: [ :i | 
		1 to: i do: [ :j |
			a1 at: i at: j put: (10000 random) ] ].
	
	1 to: 100 do: [ :i|
		i+1 to: 100 do:[:j|
			a1 at: i at: j put: (a1 at:j at: i) ] ].
]

{ #category : #setupTwoMatrix }
MBSetup >> setuptwoAIColumnMatrix [


	a1 := AIColumnMatrix new: 500.
	a2 := AIColumnMatrix new: 500.
	
	1 to: 500 do: [ :i | 
		1 to: 500 do: [ :j |
			a1 at: i and: j put: (10000 random) ] ].
	
	1 to: 500 do: [ :i | 
		1 to: 500 do: [ :j |
			a2 at: i and: j put: (10000 random) ] ].
]

{ #category : #setupTwoMatrix }
MBSetup >> setuptwoAIDiagonalMatrix [


	|aArray|
	aArray := Array new: 500.
	1 to: 500 do: [ :i | aArray at: i put: (10000 random) ].
	
	a1 := AIDiagonalMatrix withDiagonal: aArray.
	
	1 to: 500 do: [ :i | aArray at: i put: (10000 random) ].
	
	a2 := AIDiagonalMatrix withDiagonal: aArray.
]

{ #category : #setupTwoMatrix }
MBSetup >> setuptwoAIRowMatrix [


	a1 := AIRowMatrix new: 500.
	a2 := AIRowMatrix new: 500.
	
	1 to: 500 do: [ :i | 
		1 to: 500 do: [ :j |
			a1 at: i and: j put: (10000 random) ] ].
	
	1 to: 500 do: [ :i | 
		1 to: 500 do: [ :j |
			a2 at: i and: j put: (10000 random) ] ].
]

{ #category : #setupTwoMatrix }
MBSetup >> setuptwoAISymetricMatrix [


	a1 := AISymetricMatrix new: 500.
	a2 := AISymetricMatrix new: 500.
	
	1 to: 500 do: [ :i | 
		1 to: i do: [ :j |
			a1 at: i and: j put: (10000 random) ] ].
	
	1 to: 500 do: [ :i|
		i+1 to: 500 do:[:j|
			a1 at: i and: j put: (a1 at:j and: i) ] ].
	
	1 to: 500 do: [ :i | 
		1 to: i do: [ :j |
			a2 at: i and: j put: (10000 random) ] ].
	
	1 to: 500 do: [ :i|
		i+1 to: 500 do:[:j|
			a2 at: i and: j put: (a2 at:j and: i) ] ].
	
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

{ #category : #setupTwoMatrix }
MBSetup >> setuptwoPMSymmetricMatrix [


	a1 := PMSymmetricMatrix new: 500.
	
	1 to: 500 do: [ :i | 
		1 to: i do: [ :j |
			a1 at: i at: j put: (10000 random) ] ].
	
	1 to: 500 do: [ :i|
		i+1 to: 500 do:[:j|
			a1 at: i at: j put: (a1 at:j at: i) ] ].
	a2 := PMSymmetricMatrix new: 500.
	
	1 to: 500 do: [ :i | 
		1 to: i do: [ :j |
			a2 at: i at: j put: (10000 random) ] ].
	
	1 to: 500 do: [ :i|
		i+1 to: 500 do:[:j|
			a2 at: i at: j put: (a2 at:j at: i) ] ].
]
