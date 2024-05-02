import 'package:flutter/material.dart';
import 'package:flutter_fundamentos/navegacao/page3.dart';

class Page2 extends StatelessWidget {
  const Page2({super.key});

  static final String routeName = '/page2';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Page 2'),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
                onPressed: () {
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (context) => Page3()));
                },
                child: const Text('Page 3 via page --')),
            ElevatedButton(
                onPressed: () {
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (context) => Page3()));
                },
                child: const Text('Page 3 via named --')),
            ElevatedButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                child: const Text('POP')),
          ],
        ));
  }
}
