// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$HomeController on _HomeControllerBase, Store {
  Computed<String>? _$palavraInvertidaComputed;

  @override
  String get palavraInvertida => (_$palavraInvertidaComputed ??=
          Computed<String>(() => super.palavraInvertida,
              name: '_HomeControllerBase.palavraInvertida'))
      .value;
  Computed<bool>? _$isPalindromeComputed;

  @override
  bool get isPalindrome =>
      (_$isPalindromeComputed ??= Computed<bool>(() => super.isPalindrome,
              name: '_HomeControllerBase.isPalindrome'))
          .value;

  late final _$palavraAtom =
      Atom(name: '_HomeControllerBase.palavra', context: context);

  @override
  String get palavra {
    _$palavraAtom.reportRead();
    return super.palavra;
  }

  @override
  set palavra(String value) {
    _$palavraAtom.reportWrite(value, super.palavra, () {
      super.palavra = value;
    });
  }

  late final _$_HomeControllerBaseActionController =
      ActionController(name: '_HomeControllerBase', context: context);

  @override
  void setPalavra(String novaPalavra) {
    final _$actionInfo = _$_HomeControllerBaseActionController.startAction(
        name: '_HomeControllerBase.setPalavra');
    try {
      return super.setPalavra(novaPalavra);
    } finally {
      _$_HomeControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
palavra: ${palavra},
palavraInvertida: ${palavraInvertida},
isPalindrome: ${isPalindrome}
    ''';
  }
}
