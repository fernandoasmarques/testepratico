import 'package:flutter_modular/flutter_modular.dart';

import '../entities/veiculo.dart';
import '../repositories/i_veiculo_repository.dart';

part 'listar_veiculos.g.dart';

abstract class IListarVeiculos {
  Future<List<Veiculo>> call();
}

@Injectable(singleton: false)
class ListarVeiculosImpl implements IListarVeiculos {
  final IVeiculoRepository repository;

  const ListarVeiculosImpl(this.repository);

  @override
  Future<List<Veiculo>> call() async {
    return await repository.listarVeiculos();
  }
}
