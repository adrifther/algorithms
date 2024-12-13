import 'dart:io';

//1
void main() {
  print('LEER NUMERO:');
  int numero = int.parse(stdin.readLineSync()!);
  if (numero % 2 == 0) {
    print('El número es par. Pares descendentes desde $numero hasta 0:');
    for (int i = numero; i >= 0; i -= 2) {
      print(i);
    }
  } else {
    print('El número es impar. Impares descendentes desde $numero hasta 1:');
    for (int i = numero; i >= 1; i -= 2) {
      print(i);
    }
  }
}

