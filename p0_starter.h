//===----------------------------------------------------------------------===//
//
//
//
// p0_starter.h
//
// Identification: src/include/primer/p0_starter.h
//
//
//
//===----------------------------------------------------------------------===//

#pragma once

#include <memory>
#include <stdexcept>
#include <vector>

//#include "common/exception.h"

namespace scudb {

/**
 * The Matrix type defines a common
 * interface for matrix operations.
 */
    template<typename T>
    class Matrix {
    protected:
        /**
         * TODO(P0): Add implementation
         *
         * Construct a new Matrix instance.
         * @param rows The number of rows
         * @param cols The number of columns
         *
         */
        Matrix(int rows, int cols) {
            this->rows_ = rows;
            this->cols_ = cols;
            this->linear_ = new T[(rows) * (cols)];
        }

        /** The number of rows in the matrix */
        int rows_;
        /** The number of columns in the matrix */
        int cols_;

        /**
         * TODO(P0): Allocate the array in the constructor.
         * TODO(P0): Deallocate the array in the destructor.
         * A flattened array containing the elements of the matrix.
         */
        T *linear_;

    public:
        /** @return The number of rows in the matrix */
        virtual int GetRowCount() const = 0;

        /** @return The number of columns in the matrix */
        virtual int GetColumnCount() const = 0;

        /**
         * Get the (i,j)th matrix element.
         *
         * Throw OUT_OF_RANGE if either index is out of range.
         *
         * @param i The row index
         * @param j The column index
         * @return The (i,j)th matrix element
         * @throws OUT_OF_RANGE if either index is out of range
         */
        virtual T GetElement(int i, int j) const = 0;

        /**
         * Set the (i,j)th matrix element.
         *
         * Throw OUT_OF_RANGE if either index is out of range.
         *
         * @param i The row index
         * @param j The column index
         * @param val The value to insert
         * @throws OUT_OF_RANGE if either index is out of range
         */
        virtual void SetElement(int i, int j, T val) = 0;

        /**
         * Fill the elements of the matrix from `source`.
         *
         * Throw OUT_OF_RANGE in the event that `source`
         * does not contain the required number of elements.
         *
         * @param source The source container
         * @throws OUT_OF_RANGE if `source` is incorrect size
         */
        virtual void FillFrom(const std::vector<T> &source) = 0;

        /**
         * Destroy a matrix instance.
         * TODO(P0): Add implementation
         */
        virtual ~Matrix() {
            delete this->linear_;
            this->linear_ = nullptr;
        }
    };

/**
 * The RowMatrix type is a concrete matrix implementation.
 * It implements the interface defined by the Matrix type.
 */
    template<typename T>
    class RowMatrix : public Matrix<T> {
    public:
        /**
         * TODO(P0): Add implementation
         *
         * Construct a new RowMatrix instance.
         * @param rows The number of rows
         * @param cols The number of columns
         */
        RowMatrix(int rows, int cols) : Matrix<T>(rows, cols) {
            this->data_ = new T *[rows];
            for (int i = 0; i < rows; i++) {
                this->data_[i] = new T[cols];
            }
        }

        /**
         * TODO(P0): Add implementation
         * @return The number of rows in the matrix
         */
        int GetRowCount() const override { return this->rows_; }

        /**
         * TODO(P0): Add implementation
         * @return The number of columns in the matrix
         */
        int GetColumnCount() const override { return this->cols_; }

        /**
         * TODO(P0): Add implementation
         *
         * Get the (i,j)th matrix element.
         *
         * Throw OUT_OF_RANGE if either index is out of range.
         *
         * @param i The row index
         * @param j The column index
         * @return The (i,j)th matrix element
         * @throws OUT_OF_RANGE if either index is out of range
         */
        T GetElement(int i, int j) const override {
            if (i < 0 || i >= this->rows_ || j < 0 || j >= this->cols_) {
                return 0;
//                throw NotImplementedException{"RowMatrix::GetElement() not implemented."};
            } else {
                return this->data_[i][j];
            }
        }

        /**
         * Set the (i,j)th matrix element.
         *
         * Throw OUT_OF_RANGE if either index is out of range.
         *
         * @param i The row index
         * @param j The column index
         * @param val The value to insert
         * @throws OUT_OF_RANGE if either index is out of range
         */
        void SetElement(int i, int j, T val) override {
            if (i < 0 || i >= this->rows_ || j < 0 || j >= this->cols_) {
                return;
                nullptr;
//                throw NotImplementedException{"RowMatrix::GetElement() not implemented."};
            } else {
                this->data_[i - 1][j - 1] = val;
            }
        }

        /**
         * TODO(P0): Add implementation
         *
         * Fill the elements of the matrix from `source`.
         *
         * Throw OUT_OF_RANGE in the event that `source`
         * does not contain the required number of elements.
         *
         * @param source The source container
         * @throws OUT_OF_RANGE if `source` is incorrect size
         */
        void FillFrom(const std::vector<T> &source) override {
            if (source.size() != this->cols_ * this->rows_) {
//                return nullptr;
//                throw NotImplementedException{"RowMatrix::FillFrom() not implemented."};
            } else {
                for (int i = 0; i < this->rows_; ++i) {
                    for (int j = 0; j < this->cols_; ++j) {
                        this->data_[i][j] = source[i * this->cols_ + j];
                    }
                }
            }
        }

        /**
         * TODO(P0): Add implementation
         *
         * Destroy a RowMatrix instance.
         */
        ~RowMatrix() {
            delete[] this->data_;
            this->data_ = nullptr;
        }

    private:
        /**
         * A 2D array containing the elements of the matrix in row-major format.
         *
         * TODO(P0):
         * - Allocate the array of row pointers in the constructor.
         * - Use these pointers to point to corresponding elements of the `linear` array.
         * - Don't forget to deallocate the array in the destructor.
         */
        T **data_;
    };

/**
 * The RowMatrixOperations class defines operations
 * that may be performed on instances of `RowMatrix`.
 */
    template<typename T>
    class RowMatrixOperations {
    public:
        /**
         * Compute (`matrixA` + `matrixB`) and return the result.
         * Return `nullptr` if dimensions mismatch for input matrices.
         * @param matrixA Input matrix
         * @param matrixB Input matrix
         * @return The result of matrix addition
         */
        static std::unique_ptr<RowMatrix<T>> Add(const RowMatrix<T> *matrixA, const RowMatrix<T> *matrixB) {
            int A_row, A_col, B_row, B_col;
            A_row = matrixA->GetRowCount();
            A_col = matrixA->GetColumnCount();
            B_row = matrixB->GetRowCount();
            B_col = matrixB->GetColumnCount();

            std::unique_ptr<RowMatrix<T>> matrixAnswer(new RowMatrix<T>(A_row, A_col));
            if (A_row != B_row || A_col != B_col) {
                return std::unique_ptr<RowMatrix<T>>(nullptr);
            } else {
                for (int r = 0; r < A_row; r++) {
                    for (int c = 0; c < A_col; c++) {
                        matrixAnswer->SetElement(r, c, matrixA->GetElement(r, c) + matrixB->GetElement(r, c));
                    }
                }
            }
            return matrixAnswer;
        }

        /**
         * Compute the matrix multiplication (`matrixA` * `matrixB` and return the result.
         * Return `nullptr` if dimensions mismatch for input matrices.
         * @param matrixA Input matrix
         * @param matrixB Input matrix
         * @return The result of matrix multiplication
         */
        static std::unique_ptr<RowMatrix<T>> Multiply(const RowMatrix<T> *matrixA, const RowMatrix<T> *matrixB) {
            int A_row, A_col, B_row, B_col;
            A_row = matrixA->GetRowCount();
            A_col = matrixA->GetColumnCount();
            B_row = matrixB->GetRowCount();
            B_col = matrixB->GetColumnCount();

            std::unique_ptr<RowMatrix<T>> matrixAnswer(new RowMatrix<T>(A_row, B_col));
            if (A_col != B_row) {
                return std::unique_ptr<RowMatrix<T>>(nullptr);
            } else {
                for (int r = 0; r < A_row; r++) {
                    for (int c = 0; c < B_col; c++) {
                        for (int i = 0; i < A_col; i++) {
                            T element = matrixAnswer->GetElement(r, c);
                            matrixAnswer->SetElement(r, c,
                                                     element + matrixA->GetElement(r, i) + matrixB->GetElement(i, c));
                        }
                    }
                }
            }
            return matrixAnswer;
        }

        /**
         * Simplified General Matrix Multiply operation. Compute (`matrixA` * `matrixB` + `matrixC`).
         * Return `nullptr` if dimensions mismatch for input matrices.
         * @param matrixA Input matrix
         * @param matrixB Input matrix
         * @param matrixC Input matrix
         * @return The result of general matrix multiply
         */
        static std::unique_ptr<RowMatrix<T>> GEMM(const RowMatrix<T> *matrixA, const RowMatrix<T> *matrixB,
                                                  const RowMatrix<T> *matrixC) {
            if (!matrixA || !matrixB || !matrixC) {
                return std::unique_ptr<RowMatrix<T>>(nullptr);
            } else {
                return Add(Multiply(matrixA, matrixB).get(), matrixC);
            }
        }
    };
}  // namespace scudb
