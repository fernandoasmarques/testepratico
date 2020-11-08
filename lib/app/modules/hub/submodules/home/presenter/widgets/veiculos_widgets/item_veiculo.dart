import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../../../../../core/consts/colors_const.dart';
import '../../../../../../../core/utils/responsive_box.dart';
import '../../../domain/entities/veiculo.dart';
import 'placa_mercosul.dart';

class ItemVeiculo extends StatelessWidget {
  final Veiculo _veiculo;

  const ItemVeiculo(this._veiculo) : assert(_veiculo != null);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 120,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ClipRRect(
          borderRadius: BorderRadius.all(Radius.circular(10)),
          child: Container(
            color: ColorsConst.corBranco,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ResponsiveBox(
                    fit: FlexFit.loose,
                    flex: 4,
                    child: Center(
                      child: PlacaMercosul(numeroPlaca: _veiculo.placaVeiculo),
                    ),
                  ),
                  ResponsiveBox(
                    flex: 6,
                    fit: FlexFit.loose,
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          _texto(
                              texto: _veiculo.marcaModelo,
                              fontsize: 16,
                              fontWeight: FontWeight.w500),
                          _texto(
                              texto: _veiculo.anoFabricacaoVeiculo,
                              toUpperCase: false,
                              fontsize: 14,
                              fontWeight: FontWeight.w500)
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  Text _texto(
      {@required String texto,
      double fontsize = 14.0,
      bool toUpperCase = true,
      double spacingLetter = 0.0,
      FontWeight fontWeight = FontWeight.normal}) {
    return Text(
      toUpperCase ? texto.toUpperCase() : texto,
      style: GoogleFonts.openSans(
          color: Colors.grey[700],
          fontSize: fontsize,
          fontWeight: fontWeight,
          letterSpacing: spacingLetter),
    );
  }
}
