import 'package:flutter/material.dart';

class ImagePage extends StatelessWidget {
  const ImagePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Images'),
      ),
      body: Center(
        // child: Text('Images Page'),
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Container(
            //   width: 100,
            //   height: 100,
            //   child: Image.asset(
            //     'assets/image_app_1.jpeg',
            //     fit: BoxFit.cover, // faz a imagem preencher o container
            //   ),
            // ),
            Container(
              width: 200,
              height: 200,
              child: Image.network(
                  'https://storage.googleapis.com/cms-storage-bucket/2f118a9971e4ca6ad737.png',
                  fit: BoxFit.cover),
            ),
          ],
        ),
      ),
    );
  }
}
