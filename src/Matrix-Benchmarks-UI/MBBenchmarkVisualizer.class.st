"
I am used to visualize benchmarks obtained from `MBAbstract`.

I implement two methods
- `plotBenchmarks:title:` used to plot a bar graph. Results from `MBAbstract>>#runBenchmarks:` is plotted using this method.
- `plotBenchmarksLineGraph:title:` used to plot a line graph. Results from `MBAbstract>>#runAllBenchmarks` is plotted using this method.
"
Class {
	#name : #MBBenchmarkVisualizer,
	#superclass : #Object,
	#classInstVars : [
		'aCanvas'
	],
	#category : #'Matrix-Benchmarks-UI'
}

{ #category : #adding }
MBBenchmarkVisualizer class >> addToCanvas: aRSGroup [

	aCanvas add: aRSGroup asShape
]

{ #category : #decoration }
MBBenchmarkVisualizer class >> chartAddDecoration: chart [
	
	chart addDecoration: (RSXLabelDecoration new title: 'Matrix Size'; offset: 15).
	chart addDecoration: (RSYLabelDecoration  new title: 'Time(ms)'; offset: -15).


	"chart extent: 800@800."
	chart addDecoration: (RSVerticalTick new integer).
	chart addDecoration: (RSHorizontalTick new).
	^ chart.
]

{ #category : #decoration }
MBBenchmarkVisualizer class >> chartAddPlot: chart result: result x: x color: colors [

	1 to: result first size do: [ :i|
	|y line scatter|
	y := result collect: [ :each |  ((each at: i) measurements first at: 3) value ].
	line := RSLinePlot new x: x y: y.
	line color: (colors at: i).
	chart addPlot: line.
	scatter := RSScatterPlot new.
	scatter x: x y: y; color: (colors at: i). 
	chart addPlot: scatter].

	^chart.
]

{ #category : #'plotting - benchmarks' }
MBBenchmarkVisualizer class >> displayStackedVisualizations [ 

	RSHorizontalLineLayout on: aCanvas shapes.
	
	aCanvas @ RSCanvasController .
	aCanvas open.

]

{ #category : #accessing }
MBBenchmarkVisualizer class >> getMatrixSize: aBenchmarkResultSet [
	
	"get matrix size used as the parameter in the benchmark result"
	^aBenchmarkResultSet collect: [:each | each first parameters first value].
]

{ #category : #accessing }
MBBenchmarkVisualizer class >> getNames: aBenchmarkResultSet [
	
	"get names of the matrix implementation in the report"
	^ aBenchmarkResultSet first  collect: [ :each | each benchmark name].
]

{ #category : #initialization }
MBBenchmarkVisualizer class >> initializeCanvas [

	aCanvas := RSCanvas new.

]

{ #category : #decoration }
MBBenchmarkVisualizer class >> legendAddText: legend text: names color: colors [
	" make legends with the given text and color"
	1 to: names size do: [ :i |
    	legend text: (names at: i) withBoxColor: (colors at: i)  ].
	^ legend.
]

{ #category : #'plotting - benchmarks' }
MBBenchmarkVisualizer class >> plotBenchmarksBarGraph: aBenchmark title: title protocol: protocol [
	"Plots bar chart for the results obtained by MBAbstract>>#runBenchmarks:"
	|data names chart xlabel group|	
	
	data := aBenchmark outcomes collect: [ :each | ( each measurements first at: 3) value].
	names := aBenchmark outcomes collect: [ :each | each benchmark name].
	
	chart := RSChart new.
	group := RSGroup new.
	chart container: group.
	chart barHeights: data.
	chart addDecoration: (RSYLabelDecoration  new title: 'Time(ms)'; offset: -15).
	
	xlabel := aBenchmark outcomes first parameters first value.
	xlabel := 'Matrix Size = ', xlabel asString.
	chart addDecoration: (RSXLabelDecoration new title: xlabel; offset: 35).
	chart addDecoration: (RSVerticalTick new integer).
	
	"workaround as having only one horizontal tick gives error"
	names size = 1 ifTrue: [  
		|temp|
		temp := Array new: 2 withAll: names first.
		names := temp].
	chart addDecoration: ((RSHorizontalTick new labelRotation: -45) fromNames: names).
	chart title: title,protocol,' matrix'.
	chart build.
	self addToCanvas: group.
]

{ #category : #'plotting - benchmarks' }
MBBenchmarkVisualizer class >> plotBenchmarksLineGraph: result title: title protocol: protocol [
	"plots a line graph for the results obtained by MBAbstract>>#runAllBenchmarks"
	|chart x legend names colors|
	
	chart := RSChart new.


	" get the matrix size from the benchmark result that will be displayed in the X-axis."
	x := self getMatrixSize: result. 
	colors := self tenDistinctColors.

	" Add the line plot and scatter plot to the chart"
	chart := self chartAddPlot: chart result: result x: x color: colors.

	" Add decorations to the chart i.e specifying X-axis, Y-axis, etc"
	chart := self chartAddDecoration: chart.
	
	chart title: title,protocol,' matrix'.
	chart build.
	" get names of the matrix implementations benchmarked in the report."
	names := self getNames: result.

	legend := RSLegend new.
	legend container: chart canvas.
	legend := self legendAddText: legend text: names color: colors.

	
	legend layout horizontal gapSize: 10.
	legend build.
	
	^ chart canvas open
]

{ #category : #decoration }
MBBenchmarkVisualizer class >> tenDistinctColors [
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
