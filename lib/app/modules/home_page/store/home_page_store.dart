import 'dart:async';
import 'dart:convert';

import 'package:mobx/mobx.dart';
import 'package:http/http.dart' as http;
part 'home_page_store.g.dart';

class HomePageStore = _HomePageStoreBase with _$HomePageStore;

abstract class _HomePageStoreBase with Store {
  @observable
  String? moedaUSD;

  @action
  void setMoedaUSD(String value) => moedaUSD = value;

  Future<void> getCoinUSD() async {
    Timer.periodic(const Duration(seconds: 1), (timer) async {
      try {
        var url = Uri.parse('https://economia.awesomeapi.com.br/json/last/USD');
        var response = await http.get(url);

        var data = jsonDecode(response.body);
        moedaUSD = data['USDBRL']['bid'];
        print('USD/BRL: $moedaUSD');
      } catch (e) {
        print('Erro ao acessar a API: $e');
      }
    });
  }
}
