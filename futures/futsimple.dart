import 'dart:async';

printResultadoMegaSena() {
  print('Resultado da mega sena: [15, 16, 30, 42, 47, 49]');
}

printTempoHoje() {
  print('Sol em Curitiba, temperatura de 29ºC.');
}

printFimDeJogo() {
  print('Final de jogo: Atlético 4 x 1 Coritiba');
}

printFutureSync() {
  String news = sleep();
  print(news);
}

Future printFutureAsync() async {
  String news = await sleep();
  print(news);
}

Future sleep() {
  return new Future.delayed(const Duration(seconds: 3), () => "Depois de 3 segundos...");
}

main() {
  printFutureAsync();
  printResultadoMegaSena();
  printTempoHoje();
  printFimDeJogo();
}