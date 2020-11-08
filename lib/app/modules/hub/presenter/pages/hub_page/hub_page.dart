import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

import '../../../../../core/consts/assets_const.dart';
import '../../../../../core/consts/colors_const.dart';
import '../../../submodules/home/home_module.dart';
import '../avisos_page/avisos_page.dart';
import '../configuracoes_page/configuracoes_page.dart';
import '../servicos_page/servicos_page.dart';
import 'hub_controller.dart';


class HubPage extends StatefulWidget {
  final String title;
  const HubPage({Key key, this.title = "Hub"}) : super(key: key);

  @override
  _HubPageState createState() => _HubPageState();
}

class _HubPageState extends ModularState<HubPage, HubController> {
  
  final listNavigation = List<BottomNavigationBarItem>.generate(
    AssetsConst.listIconsBottomBar.length,
    (index) => BottomNavigationBarItem(
      icon: Image.asset(
        AssetsConst.listIconsBottomBar.keys.elementAt(index),
      ),
      label: AssetsConst.listIconsBottomBar.values.elementAt(index),
    ),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: controller.pageViewController,
        children: [
          RouterOutlet(module: HomeModule()),
          AvisosPage(),
          ServicosPage(),
          ConfiguracoesPage(),
        ],
      ),
      bottomNavigationBar: AnimatedBuilder(
        animation: controller.pageViewController,
        builder: (context, snapshot) {
          return BottomNavigationBar(
            currentIndex: controller.pageViewController?.page?.round() ?? 0,
            onTap: (index) {
              controller.pageViewController.jumpToPage(index);
            },
            items: listNavigation,
            unselectedItemColor: ColorsConst.corFundo,
            type: BottomNavigationBarType.fixed,
            showUnselectedLabels: true,
          );
        },
      ),
    );
  }
}
