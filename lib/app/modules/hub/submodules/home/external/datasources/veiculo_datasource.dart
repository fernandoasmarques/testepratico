import 'package:flutter_modular/flutter_modular.dart';

import '../../domain/entities/veiculo.dart';
import '../../infra/datasources/i_veiculo_datasource.dart';

part 'veiculo_datasource.g.dart';

@Injectable(singleton: false)
class VeiculoDataSource implements IVeiculoDataSource {
  @override
  Future<List<Veiculo>> listarVeiculos() async {
    await Future.delayed(const Duration(seconds: 1));
    return Future.value([
      const Veiculo(
          placaVeiculo: 'PBA2019',
          anoFabricacaoVeiculo: '2010/2011',
          marcaVeiculo: 'BMW',
          modeloVeiculo: '535i FR71'),
      const Veiculo(
          placaVeiculo: 'BRA2E19',
          anoFabricacaoVeiculo: '2010/2011',
          marcaVeiculo: 'BMW',
          modeloVeiculo: '535i FR71'),
      const Veiculo(
          placaVeiculo: 'BEE4019',
          anoFabricacaoVeiculo: '2010/2011',
          marcaVeiculo: 'BMW',
          modeloVeiculo: '535i FR71'),
      const Veiculo(
          placaVeiculo: 'BSE3R52',
          anoFabricacaoVeiculo: '2010/2011',
          marcaVeiculo: 'BMW',
          modeloVeiculo: '535i FR71'),
    ]);
  }
}
