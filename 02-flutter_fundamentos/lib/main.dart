import 'package:flutter/material.dart';
// import 'package:flutter_fundamentos/home/container.dart';
// import 'package:flutter_fundamentos/home/home_page.dart';
// import 'package:flutter_fundamentos/home/images_page.dart';
import 'package:flutter_fundamentos/navegacao/home_page.dart' as navegacao;
import 'package:flutter_fundamentos/navegacao/page2.dart';
import 'package:flutter_fundamentos/navegacao/page3.dart';
import 'package:flutter_fundamentos/navegacao/page4.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      // home: ContainerTest(),
      // home: ImagePage(),
      home: navegacao.HomePageNav(),
      routes: {
        '/': (_) => navegacao.HomePageNav(),
        Page2.routeName: (_) => Page2(),
        '/page3': (_) => Page3(),
        '/page4': (_) => Page4(),
      },
    );
  }
}
