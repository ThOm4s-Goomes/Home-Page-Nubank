// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home_page_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$HomePageStore on _HomePageStoreBase, Store {
  late final _$moedaUSDAtom =
      Atom(name: '_HomePageStoreBase.moedaUSD', context: context);

  @override
  String? get moedaUSD {
    _$moedaUSDAtom.reportRead();
    return super.moedaUSD;
  }

  @override
  set moedaUSD(String? value) {
    _$moedaUSDAtom.reportWrite(value, super.moedaUSD, () {
      super.moedaUSD = value;
    });
  }

  late final _$_HomePageStoreBaseActionController =
      ActionController(name: '_HomePageStoreBase', context: context);

  @override
  void setMoedaUSD(String value) {
    final _$actionInfo = _$_HomePageStoreBaseActionController.startAction(
        name: '_HomePageStoreBase.setMoedaUSD');
    try {
      return super.setMoedaUSD(value);
    } finally {
      _$_HomePageStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
moedaUSD: ${moedaUSD}
    ''';
  }
}
