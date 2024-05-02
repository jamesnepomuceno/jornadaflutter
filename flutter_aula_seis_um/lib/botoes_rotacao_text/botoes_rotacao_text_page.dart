import 'package:flutter/material.dart';

class BotoesRotacaoTextoPage extends StatelessWidget {
  const BotoesRotacaoTextoPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text('Botões e rotação de texto'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            RotatedBox(quarterTurns: -1, child: Text('Rotated Text')),
            TextButton(
              onPressed: () {
                print('pressionado 1');
              },
              child: Text('Botão 1'),
              style: TextButton.styleFrom(
                  // primary: Colors.white,
                  backgroundColor: Colors.blue,
                  padding: EdgeInsets.all(30),
                  minimumSize: Size(200, 200),
                  textStyle: TextStyle(fontSize: 30),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10))),
            ),
            IconButton(
                onPressed: () {
                  print('pressionado 2');
                },
                icon: Icon(Icons.add)),
            ElevatedButton(
              onPressed: () {
                print('pressionado Elevated Button');
              },
              style: ElevatedButton.styleFrom(
                  //primary: Colors.red,
                  padding: EdgeInsets.all(30),
                  minimumSize: Size(200, 200),
                  textStyle: TextStyle(fontSize: 30),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  )),
              child: Text('Elevated Button'),
            ),
            SizedBox(
              height: 20,
            ),
            ElevatedButton.icon(
              onPressed: () {
                print('pressionado 2');
              },
              icon: Icon(Icons.access_alarm),
              label: Text('Elevated Button Icon'),
            ),
          ],
        ),
      ),
    );
  }
}
