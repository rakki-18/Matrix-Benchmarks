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
				baseline: 'Roassal3'
				with: [ spec repository: 'github://ObjectProfile/Roassal3/src' ].


			spec 
				package: 'Matrix-Benchmarks' 			with: [ spec requires: #('AILinearAlgebra' 'PolyMath' 'CalipeLSBenchmark') ];
				package: 'Matrix-Benchmarks-UI' 		with: [ spec requires: #('Matrix-Benchmarks' 'Roassal3') ];
				package: 'Matrix-Benchmarks-Tests' 	with: [ spec requires: #('Matrix-Benchmarks') ].
				

			spec 
				group: 'Core' 						with: #('Matrix-Benchmarks');
				group: 'UI'							with: #('Matrix-Benchmarks' 'Matrix-Benchmarks-UI');
				group: 'Tests' 						with: #('Matrix-Benchmarks' 'Matrix-Benchmarks-Tests');
				group: 'All' 						with: #('Core' 'Tests' 'UI');
				group: 'default' 					with: #('All') ]

]
