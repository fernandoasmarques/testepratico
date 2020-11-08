import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import '../../../../../core/consts/colors_const.dart';
import 'avisos_controller.dart';

class AvisosPage extends StatefulWidget {
  final String title;
  const AvisosPage({Key key, this.title = "Avisos"}) : super(key: key);

  @override
  _AvisosPageState createState() => _AvisosPageState();
}

class _AvisosPageState extends ModularState<AvisosPage, AvisosController> {
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
