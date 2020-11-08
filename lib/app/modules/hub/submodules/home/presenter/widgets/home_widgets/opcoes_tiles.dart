import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:meta/meta.dart';

import '../../../../../../../core/utils/responsive_box.dart';



class OpcoesTiles extends StatelessWidget {
  final Function onPressed;
  final String titulo;
  final String subtitulo;
  final String imageAsset;

  const OpcoesTiles({
    this.onPressed,
    @required this.titulo,
    this.subtitulo = '',
    @required this.imageAsset,
  })  : assert(titulo != null),
        assert(imageAsset != null);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 120,
      child: ClipRRect(
        borderRadius: BorderRadius.all(Radius.circular(10)),
        child: Material(
          color: Colors.white,
          child: InkWell(
            splashColor: Colors.grey[300],
            onTap: onPressed ?? () {},
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ResponsiveBox(
                  child: Center(
                    child: Image.asset(
                      imageAsset,
                      fit: BoxFit.cover,
                      height: 35,
                    ),
                  ),
                ),
                ResponsiveBox(
                  flex: 3,
                  fit: FlexFit.loose,
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: subtitulo.isEmpty == true
                          ? [
                              _texto(
                                  texto: titulo,
                                  fontsize: 24,
                                  fontWeight: FontWeight.w700),
                            ]
                          : [
                              _texto(
                                  texto: titulo,
                                  fontsize: 24,
                                  fontWeight: FontWeight.w700),
                              _texto(
                                  texto: subtitulo,
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
