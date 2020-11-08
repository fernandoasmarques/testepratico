import 'package:flutter_modular/flutter_modular.dart';

import '../../presenter/pages/hub_page/hub_controller.dart';
import 'domain/usecases/listar_veiculos.dart';
import 'external/datasources/veiculo_datasource.dart';
import 'infra/repositories/veiculo_repository_impl.dart';
import 'presenter/pages/home_page/home_controller.dart';
import 'presenter/pages/home_page/home_page.dart';
import 'presenter/pages/jornadas_page/jornadas_controller.dart';
import 'presenter/pages/jornadas_page/jornadas_page.dart';
import 'presenter/pages/veiculos_page/veiculos_controller.dart';
import 'presenter/pages/veiculos_page/veiculos_page.dart';

class HomeModule extends ChildModule {
  @override
  List<Bind> get binds => [
        $JornadasController,
        $HomeController,
        $VeiculosController,
        $ListarVeiculosImpl,
        $VeiculoRepositoryImpl,
        $VeiculoDataSource,
        $HubController
      ];

  @override
  List<ModularRouter> get routers => [
        ModularRouter(Modular.initialRoute, child: (_, args) => HomePage()),
        ModularRouter('/veiculos', child: (_, args) => VeiculosPage()),
        ModularRouter('/jornadas', child: (_, args) => JornadasPage()),
      ];

  static Inject get to => Inject<HomeModule>.of();
}
