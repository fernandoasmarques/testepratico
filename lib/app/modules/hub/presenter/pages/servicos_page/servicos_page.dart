import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import '../../../../../core/consts/colors_const.dart';
import 'servicos_controller.dart';

class ServicosPage extends StatefulWidget {
  final String title;
  const ServicosPage({Key key, this.title = "Servicos"}) : super(key: key);

  @override
  _ServicosPageState createState() => _ServicosPageState();
}

class _ServicosPageState
    extends ModularState<ServicosPage, ServicosController> {
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
      ),
    );
  }
}
