import 'package:flutter_modular/flutter_modular.dart';

import '../../domain/entities/veiculo.dart';
import '../../domain/repositories/i_veiculo_repository.dart';
import '../datasources/i_veiculo_datasource.dart';

part 'veiculo_repository_impl.g.dart';

@Injectable(singleton: false)
class VeiculoRepositoryImpl implements IVeiculoRepository {
  final IVeiculoDataSource dataSource;

  const VeiculoRepositoryImpl(this.dataSource);

  @override
  Future<List<Veiculo>> listarVeiculos() async {
    try {
      final list = await dataSource.listarVeiculos();
      return list;
      // ignore: avoid_catches_without_on_clauses
    } catch (e) {
      return null;
    }
  }
}
