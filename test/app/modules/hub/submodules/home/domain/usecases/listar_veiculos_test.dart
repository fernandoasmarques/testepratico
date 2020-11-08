import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:testelw/app/modules/hub/submodules/home/domain/entities/veiculo.dart';
import 'package:testelw/app/modules/hub/submodules/home/domain/repositories/i_veiculo_repository.dart';
import 'package:testelw/app/modules/hub/submodules/home/domain/usecases/listar_veiculos.dart';

class MockVeiculoRepository extends Mock implements IVeiculoRepository {}

void main() {
  ListarVeiculosImpl usecase;
  MockVeiculoRepository repository;

  setUp(() {
    repository = MockVeiculoRepository();
    usecase = ListarVeiculosImpl(repository);
  });

  final tVeiculo = Veiculo(
      placaVeiculo: 'PBA2019',
      anoFabricacaoVeiculo: '2010/2011',
      marcaVeiculo: 'BMW',
      modeloVeiculo: '535i FR71');

  test('Deve retornar uma [list] com os veículos', () async {
    // arrange
    when(repository.listarVeiculos())
        .thenAnswer((_) async => <Veiculo>[tVeiculo]);
    // act
    final result = await usecase();
    //assert
    expect(result, isA<List<Veiculo>>());
    verify(repository.listarVeiculos());
    /* Verificar se apenas o método acima [listarVeiculos()] 
    dever ser chamado e nada mais. */
    verifyNoMoreInteractions(repository);
  });
}
