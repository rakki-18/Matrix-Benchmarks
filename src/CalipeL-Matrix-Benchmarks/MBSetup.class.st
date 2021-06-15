Class {
	#name : #MBSetup,
	#superclass : #Object,
	#instVars : [
		'a1',
		'a2',
		'aNumber',
		'matrixSize'
	],
	#category : #'CalipeL-Matrix-Benchmarks'
}

{ #category : #'running - benchmark' }
MBSetup class >> runAllBenchmarks [
	
	|result|
	
	result := OrderedCollection new.
	50 to: 300 by: 50 do: [ :each| result addLast: (self new class runBenchmarks: each)].
	^ result.
	


]

{ #category : #'plotting - benchmarks' }
MBSetup class >> runAndPlotAllBenchmarks [

	|aBenchmark data chart names|


	aBenchmark := self new class runBenchmarks.
	data := aBenchmark outcomes collect: [ :each | (( each measurements at: 1) at: 3) value].
	names := aBenchmark outcomes collect: [ :each | each benchmark name].
	
	chart := RSChart new.

	chart barHeights: data.
	chart addDecoration: (RSYLabelDecoration  new title: 'Time'; offset: -15).
	chart addDecoration: (RSVerticalTick new integer).
	"workaround as having only one horizontal tick gives error"
	names size = 1 ifTrue: [  
		|temp|
		temp := Array new: 2 withAll: (names at: 1).
		names := temp].
	chart addDecoration: ((RSHorizontalTick new labelRotation: -45) fromNames: names).
	chart title: self title.
	^ chart open.


]

{ #category : #'plotting - benchmarks' }
MBSetup class >> runAndPlotBenchmarks [

	|aBenchmark data chart names xlabel|


	aBenchmark := self new class runBenchmarks.
	data := aBenchmark outcomes collect: [ :each | (( each measurements at: 1) at: 3) value].
	names := aBenchmark outcomes collect: [ :each | each benchmark name].
	
	chart := RSChart new.

	chart barHeights: data.
	chart addDecoration: (RSYLabelDecoration  new title: 'Time'; offset: -15).
	
	xlabel := ((aBenchmark outcomes at: 1) parameters at: 1) value.
	xlabel := 'Matrix Size = ', xlabel asString.
	chart addDecoration: (RSXLabelDecoration new title: xlabel; offset: 35).
	chart addDecoration: (RSVerticalTick new integer).
	"workaround as having only one horizontal tick gives error"
	names size = 1 ifTrue: [  
		|temp|
		temp := Array new: 2 withAll: (names at: 1).
		names := temp].
	chart addDecoration: ((RSHorizontalTick new labelRotation: -45) fromNames: names).
	chart title: self title.
	^ chart open.


]

{ #category : #'plotting - benchmarks' }
MBSetup class >> runAndPlotBenchmarks: anInteger [

	|aBenchmark data chart names xlabel|


	aBenchmark := self new class runBenchmarks: anInteger .
	data := aBenchmark outcomes collect: [ :each | (( each measurements at: 1) at: 3) value].
	names := aBenchmark outcomes collect: [ :each | each benchmark name].
	
	chart := RSChart new.

	chart barHeights: data.
	chart addDecoration: (RSYLabelDecoration  new title: 'Time'; offset: -15).
	
	xlabel := ((aBenchmark outcomes at: 1) parameters at: 1) value.
	xlabel := 'Matrix Size = ', xlabel asString.
	chart addDecoration: (RSXLabelDecoration new title: xlabel; offset: 35).
	chart addDecoration: (RSVerticalTick new integer).
	"workaround as having only one horizontal tick gives error"
	names size = 1 ifTrue: [  
		|temp|
		temp := Array new: 2 withAll: (names at: 1).
		names := temp].
	chart addDecoration: ((RSHorizontalTick new labelRotation: -45) fromNames: names).
	chart title: self title.
	^ chart open.


]

{ #category : #'running - benchmark' }
MBSetup class >> runBenchmarks [

	^ (BenchmarkSuite class: self new class ) run.
	


]

{ #category : #'running - benchmark' }
MBSetup class >> runBenchmarks: anInteger [
	|integerasString|
	
	integerasString := anInteger asString.
	^ (BenchmarkSuite class: self new class ) run: BenchmarkResultC new with: (Dictionary new at: #'matrixSize' put: integerasString ;yourself).
	


]

{ #category : #parameters }
MBSetup >> matrixSize [
	

	^ matrixSize

	
	
]

{ #category : #parameters }
MBSetup >> matrixSize: anInteger [
	

	<parameter: #matrixSize type: #Integer default: 100 >

	matrixSize := anInteger.

	
	
]

{ #category : #setupOneMatrix }
MBSetup >> setupAIColumnMatrix [

	|size|
	
	size := matrixSize.
	a1 := AIColumnMatrix new: size.

	
	1 to: size do: [ :i | 
		1 to: size do: [ :j |
			a1 at: i and: j put: (10000 random) ] ].
	
	
]

{ #category : #setupOneMatrix }
MBSetup >> setupAIDiagonalMatrix [


	|aArray size|
	
	size := matrixSize.
	aArray := Array new: size.
	1 to: size do: [ :i | aArray at: i put: (1000 random) ].
	
	a1 := AIDiagonalMatrix withDiagonal: aArray.
	
]

{ #category : #setupOneMatrix }
MBSetup >> setupAIRowMatrix [

	|size|
	
	size := matrixSize.
	a1 := AIRowMatrix new: size.

	
	1 to: size do: [ :i | 
		1 to: size do: [ :j |
			a1 at: i and: j put: (10000 random) ] ].
	
	
]

{ #category : #setupOneMatrix }
MBSetup >> setupAISymetricMatrix [

	|size|
	
	size := matrixSize.
	a1 := AISymetricMatrix new: size.

	1 to: size do: [ :i | 
		1 to: i do: [ :j |
			a1 at: i and: j put: (10000 random) ] ].
	
	1 to: size do: [ :i|
		i+1 to: size do:[:j|
			a1 at: i and: j put: (a1 at:j and: i) ] ].
	
	
]

{ #category : #setupOneMatrix }
MBSetup >> setupArray2D [

	|size|
	
	size := matrixSize.
	a1 := Array2D new: size.
	
	1 to: size do: [ :i | 
		1 to: size do: [ :j |
			a1 at: i at: j put: (10000 random) ] ].
	
]

{ #category : #setupInvertibleMatrix }
MBSetup >> setupInvertiblePMMatrix [
	" 2 triangular matrices( upper and lower) are generated.
	They are multipied to generate the invertible matrix"
	
	|l u size|
	
	size := matrixSize.
	l := PMMatrix zerosRows: size cols: size.
	
	1 to: size do: [ :i|
	1 to: i-1 do:[ :j|
		l at: i at: j put: (10 random)
		 ]].
	" principal diagonal elements can not be zero"
	1 to: size do: [ :i|
	l at: i at: i put: (10 random)+1 ].

	u := PMMatrix zerosRows: size cols: size.

	1 to: size do: [ :i|
		i+1 to: size do:[ :j|
			u at: i at: j put: (10 random)
		 ]].
	1 to: size do: [ :i|
		u at: i at: i put: (10 random)+1 ].

	a1 := l*u.

]

{ #category : #setupInvertibleMatrix }
MBSetup >> setupInvertiblePMSymmetricMatrix [
	"A full rank symmetric matrix AtA is generated,
	where A is a random symmetric matrix."
	
	|size|
	
	size:= matrixSize.
	a1 := PMSymmetricMatrix new: size.
	
	1 to: size do: [ :i | 
		1 to: i do: [ :j |
			a1 at: i at: j put: (10 random) ] ].
	
	1 to: size do: [ :i|
		i+1 to: size do:[:j|
			a1 at: i at: j put: (a1 at:j at: i) ] ].
	a1 := a1 transpose * a1.
]

{ #category : #setupNumber }
MBSetup >> setupNumber [

	aNumber := (10000 random).

	
	
]

{ #category : #setupSpecial }
MBSetup >> setupPMJacobiTransformation [
	
	
	self setupPMMatrix.

	a1 := PMJacobiTransformation matrix: a1.


]

{ #category : #setupSpecial }
MBSetup >> setupPMLUPDecomposition [ 
	
	
	|size|

	size := matrixSize.
	self setupPMMatrix.
	
	a2 := PMVector new: size.
	1 to: size do: [ :i|
		a2 at: i put: (1000 random) ].
	
	a1 := PMLUPDecomposition equations: a1 rows.





]

{ #category : #setupSpecial }
MBSetup >> setupPMLinearEquationSystem [
	
	" Random matrix and vector is generated.
	If the matrix is singular, solution will just return nil."
	|size|

	size := matrixSize.
	self setupPMMatrix.
	
	a2 := PMVector new: size.
	1 to: size do: [ :i|
		a2 at: i put: (1000 random) ].
	
	a1 := PMLinearEquationSystem equations: a1 rows constant: a2 asArray.





]

{ #category : #setupOneMatrix }
MBSetup >> setupPMMatrix [


	|size|
	
	size := matrixSize.
	a1 := PMMatrix new: size.
	
	1 to: size do: [ :i | 
		1 to: size do: [ :j |
			a1 at: i at: j put: (10000 random) ] ].
	
]

{ #category : #setupOneMatrix }
MBSetup >> setupPMSymmetricMatrix [


	|size|
	
	size := matrixSize.
	a1 := PMSymmetricMatrix new: size.
	
	1 to: size do: [ :i | 
		1 to: i do: [ :j |
			a1 at: i at: j put: (10000 random) ] ].
	
	1 to: size do: [ :i|
		i+1 to: size do:[:j|
			a1 at: i at: j put: (a1 at:j at: i) ] ].
	
]

{ #category : #setupStrassen }
MBSetup >> setupStrassenPMMatrix [


	
	"matrixSize should be a power of 2"
	self assert: (matrixSize isPowerOfTwo ) description: 'matrixSize should be a power of 2'.
	self setuptwoPMMatrix .
	
]

{ #category : #setupStrassen }
MBSetup >> setupStrassenPMSymmetricMatrix [


	"matrixSize should be a power of 2"
	self assert: (matrixSize isPowerOfTwo ) description: 'matrixSize should be a power of 2'.
	self setuptwoPMSymmetricMatrix.
]

{ #category : #setupTwoMatrix }
MBSetup >> setuptwoAIColumnMatrix [

	|size|
	
	size := matrixSize.
	self setupAIColumnMatrix.
	a2 := AIColumnMatrix new: size.
	
	1 to: size do: [ :i | 
		1 to: size do: [ :j |
			a2 at: i and: j put: (1000 random) ] ].
]

{ #category : #setupTwoMatrix }
MBSetup >> setuptwoAIDiagonalMatrix [

	|size aArray|
	
	size := matrixSize.
	self setupAIDiagonalMatrix .
	
	aArray := Array new: size.

	1 to: size do: [ :i | aArray at: i put: (1000 random) ].
	
	a2 := AIDiagonalMatrix withDiagonal: aArray.
]

{ #category : #setupTwoMatrix }
MBSetup >> setuptwoAIRowMatrix [

	|size|
	
	size := matrixSize.
	self setupAIRowMatrix.
	
	a2 := AIRowMatrix new: size.
	
	1 to: size do: [ :i | 
		1 to: size do: [ :j |
			a2 at: i and: j put: (1000 random) ] ].
]

{ #category : #setupTwoMatrix }
MBSetup >> setuptwoAISymetricMatrix [

	|size|
	
	size := matrixSize.
	self setupAISymetricMatrix.
	
	a2 := AISymetricMatrix new: size.

	1 to: size do: [ :i | 
		1 to: i do: [ :j |
			a2 at: i and: j put: (1000 random) ] ].
	
	1 to: size do: [ :i|
		i+1 to: size do:[:j|
			a2 at: i and: j put: (a2 at:j and: i) ] ].
	
]

{ #category : #setupTwoMatrix }
MBSetup >> setuptwoArray2D [

	|size|
	
	size := matrixSize.
	
	self setupArray2D.
	a2 := Array2D new: size.
	
	1 to: size do: [ :i | 
		1 to: size do: [ :j |
			a2 at: i at: j put: (1000 random) ] ].
]

{ #category : #setupTwoMatrix }
MBSetup >> setuptwoPMMatrix [

	|size|
	
	size := matrixSize.
	self setupPMMatrix.
	a2 := PMMatrix new: size.
	
	1 to: size do: [ :i | 
		1 to: size do: [ :j |
			a2 at: i at: j put: (1000 random) ] ].
]

{ #category : #setupTwoMatrix }
MBSetup >> setuptwoPMSymmetricMatrix [

	|size|
	
	size := matrixSize.
	self setupPMSymmetricMatrix.
	
	a2 := PMSymmetricMatrix new: size.
	
	1 to: size do: [ :i | 
		1 to: i do: [ :j |
			a2 at: i at: j put: (1000 random) ] ].
	
	1 to: size do: [ :i|
		i+1 to: size do:[:j|
			a2 at: i at: j put: (a2 at:j at: i) ] ].
]
