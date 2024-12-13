
//2
import 'dart:io';


class Persona {
  String sexo;
  int edad;

  Persona(this.sexo, this.edad);
}

void main() {
  List<Persona> personas = [];
  int mayoresEdad = 0;
  int menoresEdad = 0;
  int masculinosMayoresEdad = 0;
  int femeninasMenoresEdad = 0;
  int mujeres = 0;

  for (int i = 0; i < 50; i++) {
    print("Ingrese sexo (M/F) y edad de la persona ${i + 1}:");
    String sexo = stdin.readLineSync()!;
    int edad = int.parse(stdin.readLineSync()!);
    personas.add(Persona(sexo, edad));
  }

  for (Persona persona in personas) {
    if (persona.edad >= 18) {
      mayoresEdad++;
      if (persona.sexo == 'M') {
        masculinosMayoresEdad++;
      }
    } else {
      menoresEdad++;
      if (persona.sexo == 'F') {
        femeninasMenoresEdad++;
      }
    }
    if (persona.sexo == 'F') {
      mujeres++;
    }
  }

  double porcentajeMayores = (mayoresEdad / personas.length) * 100;
  double porcentajeMujeres = (mujeres / personas.length) * 100;

  print('Cantidad de personas mayores de edad: $mayoresEdad');
  print('Cantidad de personas menores de edad: $menoresEdad');
  print('Cantidad de personas masculinas mayores de edad: $masculinosMayoresEdad');
  print('Cantidad de personas femeninas menores de edad: $femeninasMenoresEdad');
  print('Porcentaje de personas mayores de edad: ${porcentajeMayores.toStringAsFixed(2)}%');
  print('Porcentaje de mujeres: ${porcentajeMujeres.toStringAsFixed(2)}%');
}
