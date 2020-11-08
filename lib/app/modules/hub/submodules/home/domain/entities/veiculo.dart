import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

class Veiculo extends Equatable {
  final String placaVeiculo;
  final String marcaVeiculo;
  final String modeloVeiculo;
  final String anoFabricacaoVeiculo;

  const Veiculo(
      {@required this.placaVeiculo,
      @required this.marcaVeiculo,
      @required this.modeloVeiculo,
      @required this.anoFabricacaoVeiculo});

  String get marcaModelo => '$marcaVeiculo $modeloVeiculo';

  List<Object> get props => [
        placaVeiculo,
        marcaVeiculo,
        modeloVeiculo,
        anoFabricacaoVeiculo,
      ];
}
