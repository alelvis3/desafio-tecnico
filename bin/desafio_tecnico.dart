void main(List<String> arguments) {
  int numero = 10;
  int soma = 0;
  if (numero > 0) {
    for (int i = 3; i < numero; i++) {
      if ((i % 3) == 0 || (i % 5) == 0) {
        soma = soma + i;
      }
    }
    print('Somatoria dos numeros é $soma');
  } else {
    print("O numero não pode ser negativo");
  }
}
