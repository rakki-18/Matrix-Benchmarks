Class {
	#name : #MBPresenter,
	#superclass : #SpPresenter,
	#instVars : [
		'matrixSizeInput',
		'operations',
		'benchmarkButton',
		'stopButton',
		'runSingleBenchmarkButton',
		'runMultipleBenchmarkButton',
		'fromMatrixSize',
		'toMatrixSize',
		'byMatrixSizeGap',
		'flag',
		'matrixArgsWindow'
	],
	#category : #'Matrix-Benchmarks-UI'
}

{ #category : #accessing }
MBPresenter >> benchmarkButton [

	^benchmarkButton 
]

{ #category : #accessing }
MBPresenter >> byMatrixSizeGap [
	^ byMatrixSizeGap 
]

{ #category : #initialization }
MBPresenter >> connectPresenters [


	self runSingleBenchmarkButton action: [ 
		flag := 'SingleBenchmark'.
		self updateMatrixArgsWindow.
		].
	
	self runMultipleBenchmarkButton action: [ 
		flag := 'MultipleBenchmark'.
		self updateMatrixArgsWindow.
		].
	
	self benchmarkButton action: [ 
		|benchmarkClass|
		benchmarkClass := self getBenchmarkClass.

		flag = 'SingleBenchmark' ifTrue: [  
				benchmarkClass perform: #runBenchmarks: with: self getMatrixSize.
			]
		ifFalse: [ 
			 benchmarkClass perform: #runAllBenchmarksFrom:to:by: with: self getFromMatrixSize with: self getToMatrixSize with: self getByMatrixSizeGap.
			]
		]
 
]

{ #category : #initialization }
MBPresenter >> designLayout [

	self layout: (SpBoxLayout newTopToBottom 
	add: 
		(SpBoxLayout  newLeftToRight 
			add: #runSingleBenchmarkButton withConstraints: [ :constraints | constraints padding: 3 ];
			add: #runMultipleBenchmarkButton withConstraints: [ :constraints | constraints padding: 3 ];
			yourself) 
	withConstraints: [ :constraints | constraints height: self class buttonHeight;  padding: 1 ];

	add: matrixArgsWindow
	withConstraints: [ :constraints | constraints height: self class buttonHeight; padding: 4  ];

	add: 'Select the operation to benchmark' expand: false;
	add: #operations withConstraints: [:constraints | constraints padding: 4];

	addLast: (SpBoxLayout newLeftToRight 
			add: #benchmarkButton  withConstraints: [ :constraints | constraints padding: 3 ];
			add: #stopButton  withConstraints: [ :constraints | constraints padding: 3 ];
			 yourself
		) withConstraints: [:constraints | constraints padding: 4];
	yourself)
]

{ #category : #accessing }
MBPresenter >> fromMatrixSize [
	^ fromMatrixSize 
]

{ #category : #accessing }
MBPresenter >> getBenchmarkClass [

	^ self operations selection selectedItem
]

{ #category : #accessing }
MBPresenter >> getByMatrixSizeGap [

	"when matrix size is not entered yet, the default size is 0, return 100 in this case"
	self byMatrixSizeGap number = 0 ifTrue: [ 
		 ^ 50].
	
	^ self byMatrixSizeGap  number
]

{ #category : #accessing }
MBPresenter >> getFromMatrixSize [

	"when matrix size is not entered yet, the default size is 0, return 100 in this case"
	self fromMatrixSize  number = 0 ifTrue: [ 
		 ^ 50 ].
	
	^ self fromMatrixSize number
]

{ #category : #accessing }
MBPresenter >> getMatrixSize [

	"when matrix size is not entered yet, the default size is 0, return 100 in this case"
	self matrixSizeInput number = 0 ifTrue: [ 
		 ^ 100 ].
	
	^ self matrixSizeInput number
]

{ #category : #accessing }
MBPresenter >> getToMatrixSize [

	"when matrix size is not entered yet, the default size is 0, return 100 in this case"
	self toMatrixSize   number = 0 ifTrue: [ 
		 ^ 200 ].
	
	^ self toMatrixSize  number
]

{ #category : #api }
MBPresenter >> initialExtent [

	^ 600@400
]

{ #category : #initialization }
MBPresenter >> initializeMatrixArgsWindow [

	

	matrixArgsWindow :=  SpBoxLayout newLeftToRight
					            add: 'Matrix Size on which the benchmarks will be run  ' expand: false ;
					            add: (matrixSizeInput := self matrixSizeInput ) ;
					            yourself.    
	"matrixArgsWindow := SpBoxLayout newLeftToRight 
	add: 'Matrix Size from' expand: false;
	add: (fromMatrixSize := self fromMatrixSize);
	add: 'To' expand: false;
	add: (toMatrixSize := self toMatrixSize );
	add: 'with a gap of' expand: false;
	add: (byMatrixSizeGap := self byMatrixSizeGap );
	yourself."
]

{ #category : #initialization }
MBPresenter >> initializePresenters [


	runSingleBenchmarkButton  := self newButton label: 'Single Benchmarks'; color: Color gray ; addStyle: 'myButton'.
	runMultipleBenchmarkButton  := self newButton label: 'Multiple Benchmarks'; color: Color gray ; addStyle: 'myButton'.

	matrixSizeInput := self newNumberInput placeholder: '100'.
	
	fromMatrixSize := self newNumberInput placeholder: '50'.
	toMatrixSize := self newNumberInput placeholder: '200'.
	byMatrixSizeGap := self newNumberInput placeholder: '50'.
	
	operations := self newList.
	operations 
		items: MBAbstract subclasses.
	benchmarkButton  := self newButton label: 'benchmark'; color: Color orange; yourself.
	stopButton := self newButton label: 'Stop'; color: Color red;  yourself.

	flag := 'SingleBenchmark'.
	self initializeMatrixArgsWindow.
	self designLayout.

	"self focusOrder add: matrixSizeLabel."
	
]

{ #category : #accessing }
MBPresenter >> matrixArgsWindow [

	^matrixArgsWindow 
]

{ #category : #accessing }
MBPresenter >> matrixSizeInput [

	^ matrixSizeInput
]

{ #category : #accessing }
MBPresenter >> operations [ 

	^ operations
]

{ #category : #accessing }
MBPresenter >> runMultipleBenchmarkButton [

	^runMultipleBenchmarkButton 
]

{ #category : #accessing }
MBPresenter >> runSingleBenchmarkButton [


	^runSingleBenchmarkButton 
]

{ #category : #api }
MBPresenter >> title [ 

	^ 'Benchmark UI'
]

{ #category : #accessing }
MBPresenter >> toMatrixSize [
	^ toMatrixSize 
]

{ #category : #'model updates' }
MBPresenter >> updateMatrixArgsWindow [

	flag = 'SingleBenchmark'
		                    ifTrue: [ 
										matrixArgsWindow removeAll;
					                     add:
						                     (self newLabel label: 'Matrix Size on which the benchmarks will be run  ')
					                     expand: false;
					                     add: (matrixSizeInput := self matrixSizeInput ) 
										]
		                    ifFalse: [ 
										matrixArgsWindow removeAll;
					                     add: (self newLabel label: 'MatrixSize from  ');
					                     add: (fromMatrixSize := self fromMatrixSize ) expand: false;
					                     add: (self newLabel label: ' To ');
					                     add: (toMatrixSize := self toMatrixSize ) expand: false;
					                     add: (self newLabel label: ' with a gap of ');
					                     add: (byMatrixSizeGap  := self byMatrixSizeGap ) expand: false 
										]
]
