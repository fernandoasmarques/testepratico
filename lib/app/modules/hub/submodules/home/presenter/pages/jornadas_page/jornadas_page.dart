import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import '../../../../../../../core/consts/colors_const.dart';
import 'jornadas_controller.dart';

class JornadasPage extends StatefulWidget {
  final String title;
  const JornadasPage({Key key, this.title = "Jornadas"}) : super(key: key);

  @override
  _JornadasPageState createState() => _JornadasPageState();
}

class _JornadasPageState
    extends ModularState<JornadasPage, JornadasController> {
  //use 'controller' variable to access controller

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorsConst.corPrincipal,
      body: Center(
        child: Text(widget.title.toUpperCase(), style: TextStyle(
          fontSize: 36,
          color: ColorsConst.corBranco,
        ),),
      )
    );
  }
}
