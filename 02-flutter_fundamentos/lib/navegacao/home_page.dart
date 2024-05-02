import 'package:flutter/material.dart';
import 'package:flutter_fundamentos/navegacao/page2.dart';

class HomePageNav extends StatelessWidget {
  const HomePageNav({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Page'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ElevatedButton(
              onPressed: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) => Page2()));
              },
              child: const Text('Page 2 via page')),
          ElevatedButton(
              onPressed: () {
                Navigator.of(context).pushNamed(Page2.routeName);
              },
              child: const Text('Page 2 via NAMED')),
        ],
      ),
    );
  }
}
