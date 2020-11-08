import '../entities/veiculo.dart';

abstract class IVeiculoRepository{
  Future<List<Veiculo>> listarVeiculos();
}