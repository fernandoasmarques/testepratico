import 'package:flutter/material.dart';

import '../../../../../../../core/consts/assets_const.dart';
import '../../../../../../../core/consts/colors_const.dart';
import '../../../../../../../core/utils/extension_color.dart';
import '../../../../../../../core/utils/responsive_box.dart';

class PlacaMercosul extends StatelessWidget {
  final String numeroPlaca;

  const PlacaMercosul({
    @required this.numeroPlaca,
  })  : assert(numeroPlaca != null),
        assert(numeroPlaca.length == 7);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: 40,
          decoration: BoxDecoration(
            border: Border.all(color: Colors.black, width: 2),
            borderRadius: BorderRadius.all(Radius.circular(5)),
          ),
          child: Column(
            children: [
              ResponsiveBox(
                flex: 3,
                child: Container(
                  color: Color('#003399'.hexToColor()),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Image.asset(
                        AssetsConst.mercosulIcon,
                        fit: BoxFit.contain,
                      ),
                      Text(
                        'BRASIL',
                        style: TextStyle(
                          fontWeight: FontWeight.w900,
                          fontSize: 10,
                          color: ColorsConst.corBranco,
                        ),
                      ),
                      Image.asset(AssetsConst.brasilIcon),
                    ],
                  ),
                ),
              ),
              ResponsiveBox(
                flex: 7,
                child: Container(
                  color: ColorsConst.corBranco,
                  child: Center(
                    child: Text(
                      numeroPlaca.toUpperCase(),
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 25,
                        fontFamily: 'FeEngschrift',
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        Container(
          height: 45,
          child: Align(
            alignment: Alignment.bottomRight,
            child: Container(
              height: 25,
              width: 25,
              decoration: BoxDecoration(
                color: Colors.blue,
                shape: BoxShape.circle,
              ),
              child: Icon(Icons.info, size: 15, color: Colors.white,),
            ),
          ),
        ),
      ],
    );
  }
}
