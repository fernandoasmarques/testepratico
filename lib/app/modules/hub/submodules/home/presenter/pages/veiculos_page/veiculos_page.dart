import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../../../../../core/consts/assets_const.dart';
import '../../../../../../../core/consts/colors_const.dart';
import '../../../../../../../core/utils/responsive_box.dart';
import '../../../../../../veiculos/presenter/pages/../../../hub/submodules/home/presenter/pages/veiculos_page/veiculos_controller.dart';
import '../../../domain/entities/veiculo.dart';
import '../../widgets/veiculos_widgets/item_veiculo.dart';

class VeiculosPage extends StatefulWidget {
  final String title;
  const VeiculosPage({Key key, this.title = "Veiculos"}) : super(key: key);

  @override
  _VeiculosPageState createState() => _VeiculosPageState();
}

class _VeiculosPageState
    extends ModularState<VeiculosPage, VeiculosController> {
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: (){},
        child: Icon(Icons.search),
      ),
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
                  'Veículos',
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
              child: FutureBuilder<List<Veiculo>>(
                future: controller.listarVeiculos(),
                builder: (context, snapshot) {
                  if (snapshot.connectionState == ConnectionState.waiting) {
                    return Center(
                      child: const CircularProgressIndicator(),
                    );
                  }
                  return ListView.builder(
                      itemCount: snapshot.data.length,
                      itemBuilder: (context, index) {
                        return ItemVeiculo(snapshot.data[index]);
                      });
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
