# Matrix-Benchmarks
Package to benchmark different matrix types and operations in Pharo

## Matrix Implementations covered 
- PMSymmetricMatrix
- Array2D
- AIDiagonalMatrix
- AIColumnMatrix
- AIRowMatrix
- AISymetricMatrix
- PMMatrix

## Matrix Types covered
- Symmetric Matrix
- Diagonal Matrix
- Identity Matrix
- Equal Matrix
- Initialization
- Random Matrix
- Row Vector
- Column Vector
- Null Matrix

## How to install the package?

1. Go to Playground (Ctrl+O+W) in your [Pharo](https://pharo.org/) image.
2. Execute the following Metacello script (select it and press Do-it button or Ctrl+D):

```Smalltalk
Metacello new
  baseline: 'MatrixBenchmark';
  repository: 'github://rakki-18/Matrix-Benchmarks/src';
  load.
```

## How to depend on the project?

If you want to add a dependency to your project, include the following lines into your baseline method:

```Smalltalk
spec
  baseline: 'MatrixBenchmark'
  with: [ spec repository: 'github://rakki-18/Matrix-Benchmarks/src' ].
```

Check out [Baselines](https://github.com/pharo-open-documentation/pharo-wiki/blob/master/General/Baselines.md) to learn more about baselines.

## Running Benchmarks
To run the benchmarks on `Array2D` matrix on the diagonal matrix initialisation method,
```
|aBenchmark|
aBenchmark := Array2DBenchmark new.
aBenchmark diagonal.
```
To run the benchmarks on  `PMSymetricMatrix` class to initialize it with a random matrix,
```
|aBenchmark|
aBenchmark := PMSymmetricBenchmark new.
aBenchmark randomMatrix.
```
