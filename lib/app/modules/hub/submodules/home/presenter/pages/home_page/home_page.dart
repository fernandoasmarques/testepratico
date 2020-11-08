import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../../../../../core/consts/assets_const.dart';
import '../../../../../../../core/consts/colors_const.dart';
import '../../../../../../../core/utils/responsive_box.dart';
import '../../../../../presenter/pages/hub_page/hub_controller.dart';
import '../../widgets/home_widgets/opcoes_tiles.dart';
import '../home_page/home_controller.dart';

class HomePage extends StatefulWidget {
  final String title;
  const HomePage({Key key, this.title = "Home"}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends ModularState<HomePage, HomeController> {
  final hubcontroller = Modular.get<HubController>();

  @override
  Widget build(BuildContext context) {
    final listOptions = <OpcoesTiles>[
      OpcoesTiles(
        onPressed: () {
          Navigator.of(context).pushNamed('/veiculos');
        },
        imageAsset: AssetsConst.cardImageVeiculos,
        titulo: 'Veículos',
      ),
      OpcoesTiles(
        onPressed: () {
          Navigator.of(context).pushNamed('/jornadas');
        },
        imageAsset: AssetsConst.cardImageJornadas,
        titulo: 'Jornadas',
      ),
      OpcoesTiles(
        onPressed: () {
          hubcontroller.irParaPagina(1);
        },
        imageAsset: AssetsConst.cardImageAvisos,
        titulo: 'Avisos',
        subtitulo: 'Último aviso recebido',
      ),
    ];

    return Scaffold(
      backgroundColor: ColorsConst.corFundo,
      body: Column(
        children: <Widget>[
          ResponsiveBox(
            flex: 2,
            child: Center(
              child: Image.asset(AssetsConst.logoLWTecnologia),
            ),
          ),
          ResponsiveBox(
            child: Padding(
              padding: const EdgeInsets.only(
                left: 10.0,
              ),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Olá Isadora',
                  style: GoogleFonts.openSans(
                      color: ColorsConst.corPrincipal,
                      fontWeight: FontWeight.w700,
                      fontSize: 25.0),
                ),
              ),
            ),
          ),
          ResponsiveBox(
            flex: 6,
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: ListView.separated(
                itemCount: listOptions.length,
                separatorBuilder: (context, index) => SizedBox(height: 20),
                itemBuilder: (context, index) => listOptions[index],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
