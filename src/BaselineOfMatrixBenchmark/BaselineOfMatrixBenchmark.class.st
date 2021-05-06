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
				package: 'Matrix-Benchmark'.

			spec 
				group: 'Core' 			with: #('Matrix-Benchmark')]
]
