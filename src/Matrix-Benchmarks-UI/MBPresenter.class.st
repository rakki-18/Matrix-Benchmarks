Class {
	#name : #MBPresenter,
	#superclass : #SpPresenter,
	#instVars : [
		'matrixSizeLabel',
		'matrixSizeInput',
		'operations',
		'benchmarkButton',
		'stopButton',
		'runSingleBenchmarkButton',
		'runMultipleBenchmarkButton'
	],
	#category : #'Matrix-Benchmarks-UI'
}

{ #category : #specs }
MBPresenter class >> defaultSpec [

		^ SpBoxLayout newTopToBottom 
	add: 
		(SpBoxLayout  newLeftToRight 
			add: #runSingleBenchmarkButton;
			add: #runMultipleBenchmarkButton;
			yourself)
	withConstraints: [ :constraints | constraints height: self buttonHeight ];
	add: #matrixSizeLabel withConstraints: [ :constraints | constraints height: self labelledPresenterHeight  ];
	add: 'Select the operation to benchmark' expand: false;
	add: #operations ;
	addLast: (SpBoxLayout newLeftToRight 
			add: #benchmarkButton ;
			add: #stopButton ; yourself
		);
	yourself
]

{ #category : #accessing }
MBPresenter >> benchmarkButton [

	^benchmarkButton 
]

{ #category : #initialization }
MBPresenter >> connectPresenters [


	self benchmarkButton action: [ 
		|benchmarkClass matrixSize|
		benchmarkClass := self getBenchmarkClass.
		matrixSize :=  self getMatrixSize.
		benchmarkClass perform: #runBenchmarks: with: matrixSize ]
]

{ #category : #accessing }
MBPresenter >> getBenchmarkClass [

	^ self operations selection selectedItem
]

{ #category : #accessing }
MBPresenter >> getMatrixSize [

	"when matrix size is not entered yet, the default size is 0, return 100 in this case"
	self matrixSizeInput number = 0 ifTrue: [ 
		 ^ 100 ].
	
	^ self matrixSizeInput number
]

{ #category : #api }
MBPresenter >> initialExtent [

	^ 600@400
]

{ #category : #initialization }
MBPresenter >> initializePresenters [

	runSingleBenchmarkButton  := self newButton label: 'Single Benchmarks'; addStyle: 'myButton'.
	runMultipleBenchmarkButton  := self newButton label: 'Multiple Benchmarks'; addStyle: 'myButton'.

	matrixSizeInput := self newNumberInput placeholder: '100'.
	matrixSizeLabel := self instantiate: (SpLabelledPresenter label: 'Matrix Size' input: matrixSizeInput  description: 'Size of the square matrices on which the benchmarks will be run.').
	
	operations := self newList.
	operations 
		items: MBAbstract subclasses.
	benchmarkButton  := self newButton label: 'benchmark'; color: Color orange; yourself.
	stopButton := self newButton label: 'Stop'; color: Color red;  yourself.
	self focusOrder add: matrixSizeLabel.
	
]

{ #category : #accessing }
MBPresenter >> matrixSizeInput [

	^ matrixSizeInput
]

{ #category : #accessing }
MBPresenter >> operations [ 

	^ operations
]

{ #category : #api }
MBPresenter >> title [ 

	^ 'Benchmark UI'
]
