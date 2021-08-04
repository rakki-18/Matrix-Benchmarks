"
I am a presenter to run the matrix-benchmark UI.


To launch the UI
`MBPresenter open`
 
"
Class {
	#name : #MBPresenter,
	#superclass : #SpPresenter,
	#instVars : [
		'matrixSizeInput',
		'operationsListPresenter',
		'benchmarkButton',
		'stopButton',
		'runSingleBenchmarkButton',
		'runMultipleBenchmarkButton',
		'fromMatrixSize',
		'toMatrixSize',
		'byMatrixSizeGap',
		'flag',
		'matrixArgsWindow',
		'resultsButton',
		'abstractPresenter',
		'resultsPresenter'
	],
	#category : #'Matrix-Benchmarks-UI'
}

{ #category : #'instance creation' }
MBPresenter class >> open [
	<example>
	
	^ self new openWithSpec
]

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
		self updateLayout.
		].
	
	self runMultipleBenchmarkButton action: [ 
		flag := 'MultipleBenchmark'.
		self updateLayout.
		].
	
	self benchmarkButton action: [ 
		|benchmarkClass|
		benchmarkClass := self getBenchmarkClass.
		
		"handle the edge case where the user has not selected any benchmark from the list,
		but still goes on to click on the benchmark button"
		benchmarkClass ifNil: [  
			self handleNoOperationSelected]
		
		ifNotNil: [  
		flag = 'SingleBenchmark' ifTrue: [ 
				|benchmarkOutput| 
				
				benchmarkOutput := benchmarkClass perform: #runBenchmarks: with: self getMatrixSize.
				self resultsPresenter: benchmarkOutput.
				self designLayoutWithResults.
			]
		ifFalse: [ 
			 benchmarkClass perform: #runAllBenchmarksFrom:to:by: with: self getFromMatrixSize with: self getToMatrixSize with: self getByMatrixSizeGap.
			]
		]
	].
	

 
]

{ #category : #initialization }
MBPresenter >> descriptionForItemAt: classRef [
	" Private - Answer a <String> with a friendly description of classRef "

	^ classRef perform: #friendlyName
]

{ #category : #layout }
MBPresenter >> designLayoutWithMultipleBenchmarks [

	"designing the layout for running benchmarks on a set of matrix sizes.
	Thus, the layout should have fromMatrixSize, toMatrixSize and byMatrixSizeGap"

	self layout: (SpBoxLayout newTopToBottom 
	add: 
		(SpBoxLayout  newLeftToRight 
			add: #runSingleBenchmarkButton withConstraints: [ :constraints | constraints padding: 3 ];
			add: #runMultipleBenchmarkButton withConstraints: [ :constraints | constraints padding: 3 ];
			add: #resultsButton withConstraints: [ :constraints | constraints padding: 3 ];
			yourself) 
	withConstraints: [ :constraints | constraints height: self class buttonHeight;  padding: 2 ];
	
	add: 		(	SpBoxLayout newLeftToRight 
					                     		add: (self newLabel label: 'MatrixSize from  ');
					                     		add: (fromMatrixSize := self fromMatrixSize ) expand: false;
					                     		add: (self newLabel label: ' To ');
						                     	add: (toMatrixSize := self toMatrixSize ) expand: false;
					                     		add: (self newLabel label: ' with a gap of ');
					                     		add: (byMatrixSizeGap  := self byMatrixSizeGap ) expand: false;
													yourself)
	withConstraints: [ :constraints | constraints height: self class buttonHeight; padding: 4  ];

	add: 'Select the operation to benchmark' expand: false;
	add: #operationsListPresenter withConstraints: [:constraints | constraints padding: 4];

	addLast: (SpBoxLayout newLeftToRight 
			add: #benchmarkButton  withConstraints: [ :constraints | constraints padding: 3 ];
			add: #stopButton  withConstraints: [ :constraints | constraints padding: 3 ];
			 yourself
		) withConstraints: [:constraints | constraints padding: 4];
	yourself)
]

{ #category : #layout }
MBPresenter >> designLayoutWithResults [

	"This layout displays the results obtained after running benchmarks on a single matrix size.
	Hence, there is no option to select matrix sizes or opertions to benchmark here"
	self layout: (SpBoxLayout newTopToBottom 
	add: 
		(SpBoxLayout  newLeftToRight 
			add: #runSingleBenchmarkButton withConstraints: [ :constraints | constraints padding: 3 ];
			add: #runMultipleBenchmarkButton withConstraints: [ :constraints | constraints padding: 3 ];
			add: #resultsButton withConstraints: [ :constraints | constraints padding: 3 ];
			yourself) 
	withConstraints: [ :constraints | constraints height: self class buttonHeight;  padding: 1 ];
	
	
	add: #resultsPresenter
	withConstraints: [ :constraints | constraints padding: 4 ];
	
	addLast: (SpBoxLayout newLeftToRight 
			add: #benchmarkButton  withConstraints: [ :constraints | constraints padding: 3 ];
			add: #stopButton  withConstraints: [ :constraints | constraints padding: 3 ];
			 yourself
		) withConstraints: [:constraints | constraints padding: 4];
	yourself)
]

{ #category : #layout }
MBPresenter >> designLayoutWithSingleBenchmarks [


	"designing the layout for running benchmarks on a single matrix size.
	Thus, the layout should have matrixSizeInput placeholder"

	self layout: (SpBoxLayout newTopToBottom 
	add: 
		(SpBoxLayout  newLeftToRight 
			add: #runSingleBenchmarkButton withConstraints: [ :constraints | constraints padding: 3 ];
			add: #runMultipleBenchmarkButton withConstraints: [ :constraints | constraints padding: 3 ];
			add: #resultsButton withConstraints: [ :constraints | constraints padding: 3 ];
			yourself) 
	withConstraints: [ :constraints | constraints height: self class buttonHeight;  padding: 2 ];

	add: (SpBoxLayout newLeftToRight
					            add: 'Matrix Size on which the benchmarks will be run  ' expand: false ;
								   add: #matrixSizeInput;
					            yourself)
	withConstraints: [ :constraints | constraints height: self class buttonHeight; padding: 4  ];

	add: 'Select the operation to benchmark' expand: false;
	add: #operationsListPresenter withConstraints: [:constraints | constraints padding: 4];

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
	" The list contains the benchmark classes. "

	^ self operationsListPresenter selection selectedItem.
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

	"when matrix size is not entered yet, the default size is 0, return 50 in this case"
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

	"when matrix size is not entered yet, the default size is 0, return 200 in this case"
	self toMatrixSize   number = 0 ifTrue: [ 
		 ^ 200 ].
	
	^ self toMatrixSize  number
]

{ #category : #'error handling' }
MBPresenter >> handleNoOperationSelected [

	^ MBDialogPresenter new openModalWithSpec
]

{ #category : #api }
MBPresenter >> initialExtent [

	^ 600@400
]

{ #category : #initialization }
MBPresenter >> initializeButtons [ 

	runSingleBenchmarkButton  := self newButton label: 'Single Benchmarks'; color: Color gray ; addStyle: 'myButton'.
	runMultipleBenchmarkButton  := self newButton label: 'Multiple Benchmarks'; color: Color gray ; addStyle: 'myButton'.
	resultsButton := self newButton label: 'Results'; color: Color gray; disable; addStyle: 'myButton'.
	
	benchmarkButton := self newButton label: 'benchmark'; color: Color orange; yourself.
	stopButton := self newButton label: 'Stop'; color: Color red;  yourself.
]

{ #category : #initialization }
MBPresenter >> initializeList [

	operationsListPresenter  := self newList.
	operationsListPresenter  
		items: MBAbstract subclasses;
		display: [ : classRef | self descriptionForItemAt: classRef ]
		"contextMenu: [ self menuForSelectedItem ]."
]

{ #category : #initialization }
MBPresenter >> initializeMatrixArgs [
	
	"placeholders to store the arguments entered for the sizes of the matrices on which the benchmarks will be run."
	matrixSizeInput := self newNumberInput placeholder: '100'.
	
	fromMatrixSize := self newNumberInput placeholder: '50'.
	toMatrixSize := self newNumberInput placeholder: '200'.
	byMatrixSizeGap := self newNumberInput placeholder: '50'.
]

{ #category : #initialization }
MBPresenter >> initializePresenters [


	self initializeButtons.

	self initializeMatrixArgs.

	self initializeList.

	"when UI is opened, single benchmark modal will be displayed"
	flag := 'SingleBenchmark'.
	self designLayoutWithSingleBenchmarks.

	
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
MBPresenter >> operationsListPresenter [

	^ operationsListPresenter 
]

{ #category : #accessing }
MBPresenter >> resultsButton [ 
	^ resultsButton 
]

{ #category : #accessing }
MBPresenter >> resultsPresenter: aResultOutput [

	"make a tabular report of the outcome of the benchmark"
	resultsPresenter  := (SpTablePresenter new)
		items: aResultOutput outcomes;
		addColumn: (SpStringTableColumn  title: 'Implementation' evaluated: [:each | each benchmark name]);
		addColumn: (SpStringTableColumn title: 'Time(ms)' evaluated: [:each | ((each measurements at: 1) at: 3 ) value]);
		addColumn: (SpStringTableColumn title: 'Memory(Byte)' evaluated: [:each | each spaceMeasurements ]);
		addColumn: (SpStringTableColumn title: 'MatrixSize' evaluated: [:each | (each parameters at: 1) value]);
		yourself
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
MBPresenter >> updateLayout [

	"update layout based on the button clicked by the user"
	flag = 'SingleBenchmark'
		                    ifTrue: [ 
										self designLayoutWithSingleBenchmarks
										]
		                    ifFalse: [ 
										self designLayoutWithMultipleBenchmarks 
										]
]
