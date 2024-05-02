import 'package:flutter/material.dart';
import 'package:flutter_fundamentos/navegacao/page4.dart';

class Page3 extends StatelessWidget {
  const Page3({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Home Page 3'),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
                onPressed: () {
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (context) => Page4()));
                },
                child: const Text('Page 4 via page --')),
          ],
        ));
  }
}
