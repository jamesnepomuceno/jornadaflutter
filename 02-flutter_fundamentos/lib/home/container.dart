import 'package:flutter/material.dart';

class ContainerTest extends StatelessWidget {
  const ContainerTest({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Yeah, just a Flutter App'),
          backgroundColor: Colors.blue,
          actions: [
            IconButton(
              icon: const Icon(Icons.search),
              onPressed: () {},
            ),
          ],
        ),
        body: Center(
          child: Container(
            width: 200,
            height: 200,
            margin: const EdgeInsets.all(10),
            padding: const EdgeInsets.all(10),
            decoration: BoxDecoration(
              color: const Color(0xFF196BCA),
              borderRadius: const BorderRadius.all(Radius.circular(30)),
              border: Border.all(
                width: 2,
              ),
              boxShadow: const [
                BoxShadow(
                  color: Colors.black,
                  blurRadius: 10,
                  offset: Offset(10, 10),
                ),
                BoxShadow(
                  color: Colors.red,
                  blurRadius: 10,
                  offset: Offset(-10, -10),
                ),
              ],
            ),
          ),
        ));
  }
}
