Class {
	#name : #MBAbstract,
	#superclass : #MBSpaceAbstract,
	#instVars : [
		'a1',
		'a2',
		'aNumber'
	],
	#classInstVars : [
		'protocol'
	],
	#category : #'Matrix-Benchmarks'
}

{ #category : #decoration }
MBAbstract class >> chartAddDecoration: chart [
	
	chart addDecoration: (RSXLabelDecoration new title: 'Matrix Size'; offset: 15).
	chart addDecoration: (RSYLabelDecoration  new title: 'Time'; offset: -15).


	"chart extent: 800@800."
	chart addDecoration: (RSVerticalTick new integer).
	chart addDecoration: (RSHorizontalTick new).
	^ chart.
]

{ #category : #'accessing - private' }
MBAbstract class >> getMatrixSize: aBenchmarkResultSet [
	
	"get matrix size used as the parameter in the benchmark result"
	^aBenchmarkResultSet collect: [:each | ((each at: 1) parameters at: 1) value].
]

{ #category : #'accessing - private' }
MBAbstract class >> getNames: aBenchmarkResultSet [
	
	"get names of the matrix implementation in the report"
	^ (aBenchmarkResultSet at: 1)  collect: [ :each | each benchmark name].
]

{ #category : #examples }
MBAbstract class >> operations [

	|operations|
	" list all the available operations that can be benchmarked"
	operations := OrderedCollection new.
	self subclassesDo: [ :each | operations addLast: each ].
	^ operations
]

{ #category : #'accessing - private' }
MBAbstract class >> protocol [
	^ protocol.
]

{ #category : #'running - benchmark' }
MBAbstract class >> runAllBenchmarks [
	
	^ self runAndPlotAllBenchmarks 
]

{ #category : #private }
MBAbstract class >> runAllBenchmarksWithProtocol [

	|result|
	
	result := OrderedCollection new.
	Cursor wait showWhile: [  
	(self new maxMatrixSize >= 500) ifTrue: [  
	50 to: 300 by: 50 do: [ :each| result addLast: (self new class runBenchmarksWithProtocol: each)].
	]
	ifFalse: [ 
		50 to: 150 by: 25 do: [ :each| result addLast: (self new class runBenchmarksWithProtocol: each)] ]
	].
	^ result.
	
]

{ #category : #'plotting - benchmarks' }
MBAbstract class >> runAndPlotAllBenchmarks [

	|protocols|
	
	protocols := #('normal' 'symmetric' 'diagonal').
	
	protocols do: [ :each|
		(self protocols includes: each) ifTrue: [ 
			protocol := each.
			self runAndPlotAllBenchmarksWithProtocol
			 ]
		].
]

{ #category : #private }
MBAbstract class >> runAndPlotAllBenchmarksWithProtocol [

	|chart x legend result names colors|

	result := self new class runAllBenchmarksWithProtocol. 
	result := self sortResult: result.
	chart := RSChart new.
	x := self getMatrixSize: result. 
	colors := self tenDistinctColors.

	1 to: (result at: 1) size do: [ :i|
	|y line scatter|
	y := result collect: [ :each |  (((each at: i) measurements at: 1) at: 3) value ].
	line := RSLinePlot new x: x y: y.
	line color: (colors at: i).
	chart addPlot: line.
	scatter := RSScatterPlot new.
	scatter x: x y: y; color: (colors at: i). 
	chart addPlot: scatter].

	chart := self chartAddDecoration: chart.
	
	chart title: self title.
	chart build.
	names := self getNames: result.

	legend := RSLegend new.
	legend container: chart canvas.
	1 to: names size do: [ :i |
    	legend text: (names at: i) withBoxColor: (colors at: i)  ].
	
	legend layout horizontal gapSize: 10.
	legend build.
	
	^ chart canvas open.



]

{ #category : #'plotting - benchmarks' }
MBAbstract class >> runAndPlotBenchmarks [

	^ self runAndPlotBenchmarks: self new defaultMatrixSize.

]

{ #category : #'plotting - benchmarks' }
MBAbstract class >> runAndPlotBenchmarks: anInteger [

	|protocols|
	
	protocols := #('normal' 'symmetric' 'diagonal').
	
	protocols do: [ :each|
		(self protocols includes: each) ifTrue: [ 
			protocol := each.
			self runAndPlotBenchmarksWithProtocol: anInteger.
			 ]
		].
]

{ #category : #private }
MBAbstract class >> runAndPlotBenchmarksWithProtocol: anInteger [

	|aBenchmark data chart names xlabel|


	aBenchmark := self new class runBenchmarksWithProtocol: anInteger .
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
	chart open.
	
	^aBenchmark


]

{ #category : #'running - benchmark' }
MBAbstract class >> runBenchmarks [

	^ self runBenchmarks: self new defaultMatrixSize.
	


]

{ #category : #'running - benchmark' }
MBAbstract class >> runBenchmarks: anInteger [
	|integerasString|
	
	integerasString := anInteger asString.
	"plot the benchmark results"
	self runAndPlotBenchmarks: anInteger.
	
	^ Cursor wait showWhile: [(BenchmarkSuite class: self new class ) run: BenchmarkResultC new with: (Dictionary new at: #'matrixSize' put: integerasString ;yourself)]
	
	
]

{ #category : #private }
MBAbstract class >> runBenchmarksWithProtocol: anInteger [
		|integerasString selectors suite|
	
		integerasString := anInteger asString.
	
		selectors := self selectorsInProtocol: protocol.
		suite := BenchmarkSuite new.
		selectors do: [ :each | suite addBenchmark: (BenchmarkInstance class: self selector: each) ].
		^ Cursor wait showWhile: [ suite run: BenchmarkResultC new with: (Dictionary new at: #'matrixSize' put: integerasString ; yourself) ].

	
]

{ #category : #'accessing - private' }
MBAbstract class >> sortResult: aBenchmarkResultSet [
	
	"sort the outcomes in the result set based on the name of the matrix implementation"
	^ aBenchmarkResultSet  collect: [ :each | each outcomes asSortedCollection: [ :c :d | c benchmark name <= d benchmark name] ].
]

{ #category : #decoration }
MBAbstract class >> tenDistinctColors [
	"This is a list of 10 light colors that can be distinguished b
	the typical human eye even when seen together in the same picture.
	They complement the distinctTenStrongColors.
	They are described in the Show Me the Numbers book by Stephen Few"

	^ OrderedCollection new
		"red"
		add: (Color 
					h: Color red hue
					s: 0.3
					v: Color red brightness);
		"blue"
		add: (Color 
					h: Color blue hue
					s: 0.3
					v: Color blue brightness);
		"orange"
		add: (Color 
					h: Color orange hue
					s: 0.3
					v: Color orange brightness);
		"cyan"
		add: (Color 
					h: Color cyan hue
					s: 0.3 
					v: Color cyan brightness );
		"green"
		add: (Color 
					h: Color lightGreen hue
					s: 0.1
					v: 0.7);
		"pink"
		add: (Color 
					h: Color pink hue
					s: 0.1
					v: Color pink brightness);
		"brown"
		add: (Color 
					h: Color brown hue
					s: 0.2
					v: 1 );
		"purple"
		add: (Color 
					h: Color purple hue
					s: 0.2
					v: Color purple brightness );
		"yellow"
		add: (Color 
					h: Color yellow hue
					s: 0.3
					v: Color yellow brightness);
		"gray"
		add: (Color veryLightGray);
		yourself;


		yourself.
]

{ #category : #parameters }
MBAbstract >> checkMatrixSize [
	self assert: matrixSize <= self maxMatrixSize description: 'Matrix Size is too big'
]

{ #category : #parameters }
MBAbstract >> defaultInitRepetitions [ 
	^ 100.
]

{ #category : #parameters }
MBAbstract >> defaultMatrixSize [
	

	^ 100

	
	
]

{ #category : #parameters }
MBAbstract >> defaultMaxMatrixSize [
	^ 500.
]

{ #category : #parameters }
MBAbstract >> initRepetitions [ 
	^ self defaultInitRepetitions
]

{ #category : #parameters }
MBAbstract >> matrixSize [
	

	^ matrixSize

	
	
]

{ #category : #parameters }
MBAbstract >> matrixSize: anInteger [
	

	<parameter: #matrixSize type: #Integer default: 100 >

	matrixSize := anInteger.

	
	
]

{ #category : #parameters }
MBAbstract >> maxMatrixSize [ 
	^ self defaultMaxMatrixSize
]

{ #category : #setupOneMatrix }
MBAbstract >> setupAIColumnMatrix [

	|size|
	self checkMatrixSize. " checks if the matrix size is too big"
	
	size := matrixSize.
	a1 := AIColumnMatrix new: size.

	
	1 to: size do: [ :i | 
		1 to: size do: [ :j |
			a1 at: i and: j put: (100 random) ] ].
	
	
]

{ #category : #setupOneMatrix }
MBAbstract >> setupAIDiagonalMatrix [


	|aArray size|
	self checkMatrixSize. " checks if the matrix size is too big"
	
	size := matrixSize.
	aArray := Array new: size.
	1 to: size do: [ :i | aArray at: i put: (100 random) ].
	
	a1 := AIDiagonalMatrix withDiagonal: aArray.
	
]

{ #category : #setupOneMatrix }
MBAbstract >> setupAIRowMatrix [

	|size|
	self checkMatrixSize. " checks if the matrix size is too big"
	
	size := matrixSize.
	a1 := AIRowMatrix new: size.

	
	1 to: size do: [ :i | 
		1 to: size do: [ :j |
			a1 at: i and: j put: (100 random) ] ].
	
	
]

{ #category : #setupOneMatrix }
MBAbstract >> setupAISymetricMatrix [

	|size|
	self checkMatrixSize. " checks if the matrix size is too big"
	
	size := matrixSize.
	a1 := AISymetricMatrix new: size.

	1 to: size do: [ :i | 
		1 to: i do: [ :j |
			a1 at: i and: j put: (100 random) ] ].
	
	1 to: size do: [ :i|
		i+1 to: size do:[:j|
			a1 at: i and: j put: (a1 at:j and: i) ] ].
	
	
]

{ #category : #setupOneMatrix }
MBAbstract >> setupArray2D [

	|size|
	self checkMatrixSize. " checks if the matrix size is too big"
	
	size := matrixSize.
	a1 := Array2D new: size.
	
	1 to: size do: [ :i | 
		1 to: size do: [ :j |
			a1 at: i at: j put: (100 random) ] ].
	
]

{ #category : #setupInvertibleMatrix }
MBAbstract >> setupInvertiblePMMatrix [
	" 2 triangular matrices( upper and lower) are generated.
	They are multipied to generate the invertible matrix"
	
	|l u size|
	
	self checkMatrixSize. " checks if the matrix size is too big"
	
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
MBAbstract >> setupInvertiblePMSymmetricMatrix [
	"A full rank symmetric matrix AtA is generated,
	where A is a random symmetric matrix."
	
	|size|
	
	self checkMatrixSize. " checks if the matrix size is too big"
	
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
MBAbstract >> setupNumber [
	
	"0 is avoided"
	aNumber := (10000 random) + 1.

	
	
]

{ #category : #setupSpecial }
MBAbstract >> setupPMJacobiTransformation [
	
	
	self setupPMMatrix.

	a1 := PMJacobiTransformation matrix: a1.


]

{ #category : #setupSpecial }
MBAbstract >> setupPMLUPDecomposition [ 
	
	
	|size|
	self checkMatrixSize. " checks if the matrix size is too big"
	
	size := matrixSize.
	self setupPMMatrix.
	
	a2 := PMVector new: size.
	1 to: size do: [ :i|
		a2 at: i put: (10 random) ].
	
	a1 := PMLUPDecomposition equations: a1 rows.





]

{ #category : #setupSpecial }
MBAbstract >> setupPMLinearEquationSystem [
	
	" Random matrix and vector is generated.
	If the matrix is singular, solution will just return nil."
	|size|
	self checkMatrixSize. " checks if the matrix size is too big"
	
	size := matrixSize.
	self setupPMMatrix.
	
	a2 := PMVector new: size.
	1 to: size do: [ :i|
		a2 at: i put: (10 random) ].
	
	a1 := PMLinearEquationSystem equations: a1 rows constant: a2 asArray.





]

{ #category : #setupOneMatrix }
MBAbstract >> setupPMMatrix [


	|size|
	self checkMatrixSize. " checks if the matrix size is too big"
	
	size := matrixSize.
	a1 := PMMatrix new: size.
	
	1 to: size do: [ :i | 
		1 to: size do: [ :j |
			a1 at: i at: j put: (100 random) ] ].
	
]

{ #category : #setupOneMatrix }
MBAbstract >> setupPMSymmetricMatrix [


	|size|
	self checkMatrixSize. " checks if the matrix size is too big"
	
	size := matrixSize.
	a1 := PMSymmetricMatrix new: size.
	
	1 to: size do: [ :i | 
		1 to: i do: [ :j |
			a1 at: i at: j put: (100 random) ] ].
	
	1 to: size do: [ :i|
		i+1 to: size do:[:j|
			a1 at: i at: j put: (a1 at:j at: i) ] ].
	
]

{ #category : #setupStrassen }
MBAbstract >> setupStrassenPMMatrix [


	
	"matrixSize should be a power of 2"
	self assert: matrixSize isPowerOfTwo  description: 'matrixSize should be a power of 2'.
	self checkMatrixSize. " checks if the matrix size is too big"
	
	self setuptwoPMMatrix .
	
]

{ #category : #setupStrassen }
MBAbstract >> setupStrassenPMSymmetricMatrix [


	"matrixSize should be a power of 2"
	self assert: (matrixSize isPowerOfTwo ) description: 'matrixSize should be a power of 2'.
	self checkMatrixSize. " checks if the matrix size is too big"
	
	self setuptwoPMSymmetricMatrix.
]

{ #category : #setupTwoMatrix }
MBAbstract >> setuptwoAIColumnMatrix [

	|size|
	self checkMatrixSize. " checks if the matrix size is too big"
	
	size := matrixSize.
	self setupAIColumnMatrix.
	a2 := AIColumnMatrix new: size.
	
	1 to: size do: [ :i | 
		1 to: size do: [ :j |
			a2 at: i and: j put: (100 random) ] ].
]

{ #category : #setupTwoMatrix }
MBAbstract >> setuptwoAIDiagonalMatrix [

	|size aArray|
	self checkMatrixSize. " checks if the matrix size is too big"
	
	size := matrixSize.
	self setupAIDiagonalMatrix .
	
	aArray := Array new: size.

	1 to: size do: [ :i | aArray at: i put: (100 random) ].
	
	a2 := AIDiagonalMatrix withDiagonal: aArray.
]

{ #category : #setupTwoMatrix }
MBAbstract >> setuptwoAIRowMatrix [

	|size|
	self checkMatrixSize. " checks if the matrix size is too big"
	
	size := matrixSize.
	self setupAIRowMatrix.
	
	a2 := AIRowMatrix new: size.
	
	1 to: size do: [ :i | 
		1 to: size do: [ :j |
			a2 at: i and: j put: (100 random) ] ].
]

{ #category : #setupTwoMatrix }
MBAbstract >> setuptwoAISymetricMatrix [

	|size|
	self checkMatrixSize. " checks if the matrix size is too big"
	
	size := matrixSize.
	self setupAISymetricMatrix.
	
	a2 := AISymetricMatrix new: size.

	1 to: size do: [ :i | 
		1 to: i do: [ :j |
			a2 at: i and: j put: (100 random) ] ].
	
	1 to: size do: [ :i|
		i+1 to: size do:[:j|
			a2 at: i and: j put: (a2 at:j and: i) ] ].
	
]

{ #category : #setupTwoMatrix }
MBAbstract >> setuptwoArray2D [

	|size|
	self checkMatrixSize. " checks if the matrix size is too big"
	
	size := matrixSize.
	
	self setupArray2D.
	a2 := Array2D new: size.
	
	1 to: size do: [ :i | 
		1 to: size do: [ :j |
			a2 at: i at: j put: (100 random) ] ].
]

{ #category : #setupTwoMatrix }
MBAbstract >> setuptwoPMMatrix [

	|size|
	self checkMatrixSize. " checks if the matrix size is too big"
	
	size := matrixSize.
	self setupPMMatrix.
	a2 := PMMatrix new: size.
	
	1 to: size do: [ :i | 
		1 to: size do: [ :j |
			a2 at: i at: j put: (100 random) ] ].
]

{ #category : #setupTwoMatrix }
MBAbstract >> setuptwoPMSymmetricMatrix [

	|size|
	self checkMatrixSize. " checks if the matrix size is too big"
	
	size := matrixSize.
	self setupPMSymmetricMatrix.
	
	a2 := PMSymmetricMatrix new: size.
	
	1 to: size do: [ :i | 
		1 to: i do: [ :j |
			a2 at: i at: j put: (100 random) ] ].
	
	1 to: size do: [ :i|
		i+1 to: size do:[:j|
			a2 at: i at: j put: (a2 at:j at: i) ] ].
]
