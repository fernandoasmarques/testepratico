import 'package:mobx/mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';

part 'servicos_controller.g.dart';

@Injectable()
class ServicosController = _ServicosControllerBase with _$ServicosController;

abstract class _ServicosControllerBase with Store {
  @observable
  int value = 0;

  @action
  void increment() {
    value++;
  }
}
