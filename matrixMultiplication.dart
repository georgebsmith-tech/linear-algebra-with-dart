import "dart:io";

main() {
  List matA = [], matB = [], matA_row_temp, matB_row_temp, matC = [];
  print("Enter the number of rows for matrix A: ");
  int matA_row = int.tryParse(stdin.readLineSync());
  print("Enter the number of columns for matrix A: ");
  int matA_col = int.tryParse(stdin.readLineSync());

  print("Enter the number of rows for matrix B: ");
  int matB_row = int.tryParse(stdin.readLineSync());
  print("Enter the number of columns for matrix B: ");
  int matB_col = int.tryParse(stdin.readLineSync());
  if (matA_col != matB_row) {
    print("The matrices are not confirmable for multiplication!");
  } else {
    // double matA_entry;
    for (int i = 1; i <= matA_row; i++) {
      matA_row_temp = [];
      for (int j = 1; j <= matA_col; j++) {
        print("The ($i,$j)th entry ?: ");
        matA_row_temp.add(double.tryParse(stdin.readLineSync()));
      }
      matA.add(matA_row_temp);
    }
    for (int i = 1; i <= matB_row; i++) {
      matB_row_temp = [];
      for (int j = 1; j <= matB_col; j++) {
        print("The ($i,$j)th entry ?: ");
        matB_row_temp.add(double.tryParse(stdin.readLineSync()));
      }
      matB.add(matB_row_temp);
    }
    print("Matrix A: $matA");
    print("Matrix B: $matB");

    double matC_row_sum;
    List matC_row_temp;
    for (int i = 0; i < matA_row; i++) {
      matC_row_temp = [];

      for (int j = 0; j < matB_col; j++) {
        matC_row_sum = 0;
        for (int k = 0; k < matA_col; k++) {
          matC_row_sum = matC_row_sum + (matA[i][k] * matB[k][j]);
        }
        matC_row_temp.add(matC_row_sum);
      }
      matC.add(matC_row_temp);
    }
  }
  print("Matrix A is $matA\n");
  print("Matrix B is $matB\n");
  print(" And the product is Matrix C is $matC");
}
