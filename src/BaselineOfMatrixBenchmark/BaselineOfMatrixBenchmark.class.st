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
    			baseline: 'PolyMath' with: [  
    				spec 
						loads: #('Core');
						repository: 'github://PolyMathOrg/PolyMath:master/src' ].
			spec
  				baseline: 'AILinearAlgebra'
				with: [ spec repository: 'github://pharo-ai/linear-algebra/src' ].
			spec
				baseline: 'CalipeLSBenchmark'
				with: [ spec repository: 'github://rakki-18/CalipeL-S-Benchmark' ].
			
			spec 
				package: 'Matrix-Benchmark' 		with: [ spec requires: #('AILinearAlgebra' 'PolyMath') ];
				package: 'CalipeL-Matrix-Benchmarks' with: [ spec requires: #('AILinearAlgebra' 'PolyMath' 'CalipeLSBenchmark') ];
				package: 'CalipeL-Matrix-Benchmarks-Tests' with: [ spec requires: #('CalipeL-Matrix-Benchmarks') ];
				package: 'Matrix-Benchmark-Tests' with: [ spec requires: #('Matrix-Benchmark') ].

			spec 
				group: 'Core' 							with: #('Matrix-Benchmark' 'CalipeL-Matrix-Benchmarks');
				group: 'Tests' 						with: #('Matrix-Benchmark-Tests' 'CalipeL-Matrix-Benchmarks-Tests');
				group: 'default' 					with: #('Core' 'Tests') ]

]
