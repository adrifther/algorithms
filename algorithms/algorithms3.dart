//3
import 'dart:io';

void main() {
  print('LEER HORASTRABAJADAS:');
  int horasTrabajadas = int.parse(stdin.readLineSync()!);

  print('LEER TARIFA:');
  double tarifa = double.parse(stdin.readLineSync()!);

  double sueldo = 0.0;

  if (horasTrabajadas > 40) {
    int horasExtras = horasTrabajadas - 40;
    double tarifaExtra = tarifa * 1.5;
    sueldo = (40 * tarifa) + (horasExtras * tarifaExtra);
  } else {
    sueldo = horasTrabajadas * tarifa;
  }

  print('El sueldo del trabajador es: \$${sueldo.toStringAsFixed(2)}');
}
