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
In order to supress load warnings, you may prefer
```Smalltalk
[Metacello new
  baseline: 'MatrixBenchmark';
  repository: 'github://rakki-18/Matrix-Benchmarks/src';
  load] on: MCMergeOrLoadWarning do: [:warning | warning load ]
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
To get a benchmarked report on a particular operation for a particular matrix size:
```Smalltalk
MBOperationName runBenchmarks: matrixSize
```

To get a graphical report of the benchmarks for a particular operation for a particular matrix size:
```Smalltalk
MBOperationName runAndPlotBenchmarks: matrixSize
```

To get a graphical report of the benchmarks for a particular operation for a set of matrix sizes:
```Smalltalk
MBOperationName runAndPlotAllBenchmarks
```
### Examples
- On the operation - Addition:
```Smalltalk
MBAddition runAndPlotAllBenchmarks.
```
- On the operation - Element-wise Multiplication
```Smalltalk
MBElementWiseMultiplication runBenchmarks: 200.
MBElementWiseMultiplication runAndPlotBenchmarks: 200.
```
- On the operation - Accessing cells of a matrix
```Smalltalk
MBAccess runAndPlotAllBenchmarks
```

- On the operation - Building an empty matrix
```Smalltalk
MBBuild runAndPlotAllBenchmarks.
```

- On the operation - Comparing matrices
```Smalltalk
MBCompareEqual runAndPlotAllBenchmarks.
```
- On the operation - Transpose of a matrix
```Smalltalk
MBTranspose runBenchmarks: 300
MBTranspose runAndPlotBenchmarks: 300.
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
- PMJacobiTransformation
- PMLinearEquationSystem
- PMLUPDecomposition


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
- Finding eigenvectors
- Gaussian Elimination
- LU Decomposition
- QR Decomposition
- Rank factorization
- Singular Value Decomposition
- Strassen Multiplication

