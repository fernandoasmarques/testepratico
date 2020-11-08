import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:testelw/app/modules/hub/submodules/home/domain/entities/veiculo.dart';
import 'package:testelw/app/modules/hub/submodules/home/infra/datasources/i_veiculo_datasource.dart';
import 'package:testelw/app/modules/hub/submodules/home/infra/repositories/veiculo_repository_impl.dart';

class MockVeiculoDataSource extends Mock implements IVeiculoDataSource {}

void main() {
  MockVeiculoDataSource dataSource;
  VeiculoRepositoryImpl repository;

  setUp(() {
    dataSource = MockVeiculoDataSource();
    repository = VeiculoRepositoryImpl(dataSource);
  });

    final tVeiculo = Veiculo(
      placaVeiculo: 'PBA2019',
      anoFabricacaoVeiculo: '2010/2011',
      marcaVeiculo: 'BMW',
      modeloVeiculo: '535i FR71');

  test('Deve retornar uma List de veículo do datasource', () async {
    // arrange
    when(dataSource.listarVeiculos())
        .thenAnswer((_) async => <Veiculo>[tVeiculo]);
    // act
    final result = await repository.listarVeiculos();
    //assert
    expect(result, isA<List<Veiculo>>());
    verify(dataSource.listarVeiculos());
    verifyNoMoreInteractions(dataSource);
  });
}