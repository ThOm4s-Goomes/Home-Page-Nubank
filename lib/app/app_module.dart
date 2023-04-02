import 'package:flutter_modular/flutter_modular.dart';

import 'modules/home_page/home_app.dart';
import 'modules/home_page/store/home_page_store.dart';

class AppModule extends Module {
  @override
  final List<Bind> binds = [Bind((i) => HomePageStore())];

  @override
  final List<ModularRoute> routes = [
    ModuleRoute(Modular.initialRoute, module: HomeModule()),
  ];
}
