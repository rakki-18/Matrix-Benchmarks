Class {
	#name : #BaselineOfMatrixBenchmark,
	#superclass : #BaselineOf,
	#category : #BaselineOfMatrixBenchmark
}

{ #category : #baselines }
BaselineOfMatrixBenchmark >> baseline: spec [
  <baseline>
	spec
		for: #(common)
		do: [ 
			spec
    			baseline: 'PolyMath'
    			with: [ spec repository: 'github://PolyMathOrg/PolyMath:master/src' ].
			spec
  				baseline: 'AILinearAlgebra'
				with: [ spec repository: 'github://pharo-ai/linear-algebra/src' ].
			spec 
				package: 'Matrix-Benchmark';
				package: 'Matrix-Benchmark-Tests' with: [ spec requires: #('Matrix-Benchmark') ].

			spec 
				group: 'Core' 						with: #('Matrix-Benchmark');
				group: 'Tests' 						with: #('Matrix-Benchmark' 'Matrix-Benchmark-Tests');
				group: 'default' 					with: #('Core' 'Tests') ]

]
