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
				project: 'CalipeLS'
				with: [ spec 
					className: 'ConfigurationOfCalipeLS';
					versionString: #development;
					repository: 'http://smalltalkhub.com/mc/JanVrany/CalipeL-S/main' ].
			spec 
				package: 'Matrix-Benchmark' 		with: [ spec requires: #('AILinearAlgebra' 'PolyMath' 'CalipeLS') ];
				package: 'Matrix-Benchmark-Tests' with: [ spec requires: #('Matrix-Benchmark') ].

			spec 
				group: 'Core' 						with: #('Matrix-Benchmark');
				group: 'Tests' 						with: #('Matrix-Benchmark' 'Matrix-Benchmark-Tests');
				group: 'default' 					with: #('Core' 'Tests') ]

]
