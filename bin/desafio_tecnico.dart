import 'dart:io';

void main(List<String> arguments) {
  funcMenu();
}

void funcMenu() {
  print(
      "***************************************************************************************************");
  print("Desafio Técnico 1\n"
      "Implemente uma função que receba um número inteiro positivo e retorne o somatório de todos os valores\n"
      "inteiros divisíveis por 3 ou 5 que sejam inferiores ao número passado.");
  print(
      "***************************************************************************************************");

    print("Digite o numero intero para receber a soma");

    try {
      String? input = stdin.readLineSync();
      int numero = int.parse(input!);
      if (numero > 0) {
        int soma = funcDesafio(numero);
        print("A soma dos valore é $soma");
      } else {
        print("O numero não pode ser negativo!!");
      }
    } catch (e) {
      print("Digite somete numeros inteiros positivo");
    }
  }


int funcDesafio(int numero) {
  int soma = 0;
  for (int i = 3; i < numero; i++) {
    if ((i % 3) == 0 || (i % 5) == 0) {
      soma = soma + i;
    }
  }
  return soma;
}
