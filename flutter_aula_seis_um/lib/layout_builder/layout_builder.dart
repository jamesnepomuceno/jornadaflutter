import 'package:flutter/material.dart';

class LayoutBuilderPage extends StatelessWidget {
  const LayoutBuilderPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text('Layout builder'),
      ),
      body: Center(
        child: LayoutBuilder(
          builder: (BuildContext context, BoxConstraints constraints) {
            return Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  color: Colors.red,
                  height: constraints.maxHeight * 0.5,
                  width: constraints.maxWidth * 0.5,
                ),
                Container(
                  color: Colors.blue,
                  height: constraints.maxHeight * .5,
                  width: constraints.maxWidth,
                ),
              ],
            );
            // if (constraints.maxWidth < 600) {
            //   return Column(
            //     mainAxisAlignment: MainAxisAlignment.center,
            //     children: [
            //       Text('Mobile'),
            //       Text('Largura: ${constraints.maxWidth}'),
            //     ],
            //   );
            // } else {
            //   return Row(
            //     mainAxisAlignment: MainAxisAlignment.center,
            //     children: [
            //       Text('Desktop'),
            //       Text('Largura: ${constraints.maxWidth}'),
            //     ],
            //   );
            // }
          },
        ),
      ),
    );
  }
}
