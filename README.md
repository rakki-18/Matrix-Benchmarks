# Matrix-Benchmarks
Package to benchmark different matrix types and operations in Pharo


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
- To get a benchmarked report of all the matrix implementations on the operation - Addition:
```Smalltalk
MBAddition runAllBenchmarks
```
- On the operation - Element-wise Multiplication
```Smalltalk
MBElementWiseMultiplication runAllBenchmarks
```
- On the operation - Accessing cells of a matrix
```Smalltalk
MBAccess runAllBenchmarks
```

- On the operation - Building an empty matrix
```Smalltalk
MBBuild runAllBenchmarks
```

- On the operation - Comparing matrices
```Smalltalk
MBCompareEqual runAllBenchmarks
```
- On the operation - Transpose of a matrix
```Smalltalk
MBTranspose runAllBenchmarks
```

To generate a benchmark report on all the operations of a particular matrix implementation,
- For `Array2D`
```Smalltalk
(BenchmarkSuite class: CSArray2DBenchmark ) run.
```
- For `PMMatrix`
```Smalltalk
(BenchmarkSuite class: CSPMMatrixBenchmark  ) run.
```
## Matrix Implementations covered 
- Array2D
- PMMatrix
- PMSymmetricMatrix
- AIColumnMatrix
- AIRowMatrix
- AISymetricMatrix
- AIDiagonalMatrix


## Matrix Operations covered
- Building an empty Matrix
- Building a matrix filled with zeros
- Accessing matrix cells
- Addition of matrices
- Subtraction of matrices
- Matrix Multiplication
- Element-wise Multiplication
- Multiplication with a number
- Division with a number
- Comparing matrices
- Finding determinant
- Finding inverse
- Transpose of a matrx
- Trace of a matrix

