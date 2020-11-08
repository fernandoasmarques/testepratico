import 'package:mobx/mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';

part 'jornadas_controller.g.dart';

@Injectable()
class JornadasController = _JornadasControllerBase with _$JornadasController;

abstract class _JornadasControllerBase with Store {
  @observable
  int value = 0;

  @action
  void increment() {
    value++;
  }
}
