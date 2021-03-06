import 'package:disenos2/src/pages/diseno_basico.dart';
import 'package:disenos2/src/pages/home_messenger.dart';
import 'package:disenos2/src/pages/menu_page.dart';
import 'package:disenos2/src/pages/prueba_ui_page.dart';
import 'package:disenos2/src/pages/scroll_basico.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Disenos grupo TI5-2',
      initialRoute: '/menu',
      routes: {
        '/prueba_ui':(_)=>PruebaUi(),
        '/disenoBasico': (_) => DisenoBasico(),
        '/scrollBasico':(_)=>ScrollBasico(),
        '/homeMessenger':(_)=>HomeMessenger(),
        '/menu':(_)=>MenuPage(),
      },
    );
  }
}
