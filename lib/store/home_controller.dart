import 'package:mobx/mobx.dart';

part 'home_controller.g.dart';

class HomeController = _HomeControllerBase with _$HomeController;

abstract class _HomeControllerBase with Store {
  @observable
  String palavra = '';

  @computed
  String get palavraInvertida => palavra.split('').reversed.join('');

  @computed
  bool get isPalindrome => palavra.toLowerCase() == palavraInvertida.toLowerCase();

  @action
  void setPalavra(String novaPalavra) {
    palavra = novaPalavra.trim();
  }
}
