import '../../domain/entities/veiculo.dart';

abstract class IVeiculoDataSource{
  Future<List<Veiculo>> listarVeiculos();
}