import 'package:flutter_modular/flutter_modular.dart';
import 'package:mobx/mobx.dart';

import '../../../domain/usecases/listar_veiculos.dart';

part 'veiculos_controller.g.dart';

@Injectable()
class VeiculosController = _VeiculosControllerBase with _$VeiculosController;

abstract class _VeiculosControllerBase with Store {

  final IListarVeiculos listarVeiculos;

  _VeiculosControllerBase(this.listarVeiculos);

}
