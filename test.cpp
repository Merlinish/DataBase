//
// Created by jerry on 2021/8/31.
//
#include "iostream"
#include "p0_starter.h"

using namespace std;
using namespace scudb;

int main() {
    RowMatrix<int> testMatrix(3, 3);
    cout << "the row of the test matrix is: " << testMatrix.GetRowCount() << endl;
    cout << "the column of the test matrix is: " << testMatrix.GetColumnCount() << endl;

    vector<int> testSource(9, 1);
    testMatrix.FillFrom(testSource);
    cout << "fill the matrix (using the GetElement function): " << endl;
    for (int i = 0; i < testMatrix.GetRowCount(); ++i) {
        for (int j = 0; j < testMatrix.GetColumnCount(); ++j) {
            cout << testMatrix.GetElement(i, j) << "\t";
        }
        cout << endl;
    }

    cout << "set an element at [2,2]: ";
    int val;
    cin >> val;
    testMatrix.SetElement(2, 2, val);
    cout << "the result is: " << endl;
    for (int i = 0; i < testMatrix.GetRowCount(); ++i) {
        for (int j = 0; j < testMatrix.GetColumnCount(); ++j) {
            cout << testMatrix.GetElement(i, j) << "\t";
        }
        cout << endl;
    }

    cout << "test the GEMM function, cause the Add and Multiply functions are both used in this function" << endl;
    RowMatrix<int> matrixA(2, 2);
    RowMatrix<int> matrixB(1, 2);
    RowMatrix<int> matrixC(1, 2);
    unique_ptr<RowMatrix<int>> matrixResult;
    vector<int> vectorA(4, 1);
    vector<int> vectorB(2, 3);
    vector<int> vectorC(2, 5);

    matrixA.FillFrom(vectorA);
    matrixB.FillFrom(vectorB);
    matrixC.FillFrom(vectorC);

    cout << "the matrix A is:" << endl;
    for (int i = 0; i < matrixA.GetRowCount(); ++i) {
        for (int j = 0; j < matrixA.GetColumnCount(); ++j) {
            cout << matrixA.GetElement(i, j) << "\t";
        }
        cout << endl;
    }

    cout << "the matrix B is:" << endl;
    for (int i = 0; i < matrixB.GetRowCount(); ++i) {
        for (int j = 0; j < matrixB.GetColumnCount(); ++j) {
            cout << matrixB.GetElement(i, j) << "\t";
        }
        cout << endl;
    }

    cout << "the matrix C is:" << endl;
    for (int i = 0; i < matrixC.GetRowCount(); ++i) {
        for (int j = 0; j < matrixC.GetColumnCount(); ++j) {
            cout << matrixC.GetElement(i, j) << "\t";
        }
        cout << endl;
    }

    cout << "the GEMM function's answer is: " << endl;
    RowMatrixOperations<int> operation;
    matrixResult = operation.GEMM(&matrixA, &matrixB, &matrixC);
    for (int i = 0; i < matrixResult->GetRowCount(); ++i) {
        for (int j = 0; j < matrixResult->GetColumnCount(); ++j) {
            cout << matrixResult->GetElement(i, j) << "\t";
        }
        cout << endl;
    }

    return 0;
}

