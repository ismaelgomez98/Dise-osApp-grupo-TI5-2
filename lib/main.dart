import 'package:disenos2/src/pages/diseno_basico.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Disenos grupo TI5-2',
      initialRoute: '/disenoBasico',
      routes: {
        '/disenoBasico': (_) => DisenoBasico(),
      },
    );
  }
}
