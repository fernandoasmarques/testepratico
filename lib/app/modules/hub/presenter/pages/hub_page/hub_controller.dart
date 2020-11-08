import 'package:flutter/material.dart';
import 'package:mobx/mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';

part 'hub_controller.g.dart';

@Injectable()
class HubController = _HubControllerBase with _$HubController;

abstract class _HubControllerBase with Store implements Disposable {
  final pageViewController = PageController();

  void irParaPagina(int index) {
    pageViewController.jumpToPage(index);
  }

  @override
  void dispose() {
    pageViewController.dispose();
  }
}
