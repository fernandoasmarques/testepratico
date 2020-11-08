import 'package:mobx/mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';

part 'avisos_controller.g.dart';

@Injectable()
class AvisosController = _AvisosControllerBase with _$AvisosController;

abstract class _AvisosControllerBase with Store {
  @observable
  int value = 0;

  @action
  void increment() {
    value++;
  }
}
