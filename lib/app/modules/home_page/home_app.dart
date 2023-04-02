import 'package:flutter_bus/app/modules/home_page/store/home_page_store.dart';
import 'package:flutter_bus/app/modules/home_page/widgets/home_page.dart';

import 'package:flutter_modular/flutter_modular.dart';

import '../finance/widget/home_page_finance.dart';

class HomeModule extends Module {
  @override
  final List<Bind> binds = [
    Bind.lazySingleton((i) => HomePageStore()),
  ];

  @override
  final List<ModularRoute> routes = [
    ChildRoute('/', child: (_, args) => const HomePage()),
    ChildRoute('/finance/', child: (_, args) => const HomePageFinance()),
  ];
}
