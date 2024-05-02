import 'package:flutter/material.dart';

class MediaQueryPage extends StatelessWidget {
  const MediaQueryPage({super.key});

  @override
  Widget build(BuildContext context) {
    var mediaQuery = MediaQuery.of(context);
    print(mediaQuery.orientation);
    print(mediaQuery.padding.top);
    print('tamanho default da AppBar $kToolbarHeight');

    final statusBar = mediaQuery.padding.top;
    final heightBody = mediaQuery.size.height - kToolbarHeight - statusBar;
    print('tamanho exado da tela $heightBody');

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text('Media Query'),
      ),
      body: Center(
        child: Column(
          children: [
            Container(
              color: Colors.red,
              width: MediaQuery.of(context).size.width * 0.5,
              //height: MediaQuery.of(context).size.height * 0.5,
              height: heightBody * 0.5,
            ),
            Container(
              color: Colors.blue,
              width: MediaQuery.of(context).size.width * 0.5,
              //height: MediaQuery.of(context).size.height * 0.5,
              height: heightBody * 0.5,
            ),
          ],
        ),
      ),
    );
  }
}
