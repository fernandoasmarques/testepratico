import 'package:flutter_modular/flutter_modular.dart';

import 'presenter/pages/avisos_page/avisos_controller.dart';
import 'presenter/pages/configuracoes_page/configuracoes_controller.dart';
import 'presenter/pages/hub_page/hub_controller.dart';
import 'presenter/pages/hub_page/hub_page.dart';
import 'presenter/pages/servicos_page/servicos_controller.dart';

class HubModule extends ChildModule {
  @override
  List<Bind> get binds => [
        $AvisosController,
        $ServicosController,
        $ConfiguracoesController,
        $HubController,
      ];

  @override
  List<ModularRouter> get routers => [
        ModularRouter(Modular.initialRoute, child: (_, args) => HubPage()),
      ];

  static Inject get to => Inject<HubModule>.of();
}
