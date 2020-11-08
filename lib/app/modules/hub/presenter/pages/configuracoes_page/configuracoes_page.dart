import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import '../../../../../core/consts/colors_const.dart';
import 'configuracoes_controller.dart';

class ConfiguracoesPage extends StatefulWidget {
  final String title;
  const ConfiguracoesPage({Key key, this.title = "Configuracoes"})
      : super(key: key);

  @override
  _ConfiguracoesPageState createState() => _ConfiguracoesPageState();
}

class _ConfiguracoesPageState
    extends ModularState<ConfiguracoesPage, ConfiguracoesController> {
  //use 'controller' variable to access controller

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: ColorsConst.corFundo,
        body: Center(
          child: Text(
            widget.title.toUpperCase(),
            style: TextStyle(
              fontSize: 36,
              color: ColorsConst.corBranco,
            ),
          ),
        ));
  }
}
