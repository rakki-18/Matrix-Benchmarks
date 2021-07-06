"
I am used to visualize benchmarks obtained from `MBAbstract`.

I implement two methods
- `plotBenchmarks:title:` used to plot a bar graph. Results from `MBAbstract>>#runBenchmarks:` is plotted using this method.
- `plotBenchmarksLineGraph:title:` used to plot a line graph. Results from `MBAbstract>>#runAllBenchmarks` is plotted using this method.
"
Class {
	#name : #MBBenchmarkVisualizer,
	#superclass : #Object,
	#category : #'Matrix-Benchmarks'
}

{ #category : #decoration }
MBBenchmarkVisualizer >> chartAddDecoration: chart [
	
	chart addDecoration: (RSXLabelDecoration new title: 'Matrix Size'; offset: 15).
	chart addDecoration: (RSYLabelDecoration  new title: 'Time'; offset: -15).


	"chart extent: 800@800."
	chart addDecoration: (RSVerticalTick new integer).
	chart addDecoration: (RSHorizontalTick new).
	^ chart.
]

{ #category : #accessing }
MBBenchmarkVisualizer >> getMatrixSize: aBenchmarkResultSet [
	
	"get matrix size used as the parameter in the benchmark result"
	^aBenchmarkResultSet collect: [:each | ((each at: 1) parameters at: 1) value].
]

{ #category : #accessing }
MBBenchmarkVisualizer >> getNames: aBenchmarkResultSet [
	
	"get names of the matrix implementation in the report"
	^ (aBenchmarkResultSet at: 1)  collect: [ :each | each benchmark name].
]

{ #category : #'plotting - benchmarks' }
MBBenchmarkVisualizer >> plotBenchmarks: aBenchmark title: title [

	|data names chart xlabel|	
	
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
	chart title: title.
	chart open.
]

{ #category : #'plotting - benchmarks' }
MBBenchmarkVisualizer >> plotBenchmarksLineGraph: result title: title [

	|chart x legend names colors|
	
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
	
	chart title: title.
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

{ #category : #decoration }
MBBenchmarkVisualizer >> tenDistinctColors [
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
