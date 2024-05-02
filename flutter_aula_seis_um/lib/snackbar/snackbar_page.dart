import 'package:flutter/material.dart';

class SncackBarPage extends StatelessWidget {
  const SncackBarPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('SnackBar Page'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: () {
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      content: Text('Simple SnackBar'),
                    ),
                  );
                },
                child: Text('Simple SNACKBAR'),
              ),
              ElevatedButton(
                onPressed: () {
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      content: Text('Action SnackBar'),
                      action: SnackBarAction(
                        label: 'Undo',
                        onPressed: () {
                          ScaffoldMessenger.of(context).showSnackBar(
                            SnackBar(
                              content: Text('Undo SnackBar'),
                            ),
                          );
                        },
                      ),
                    ),
                  );
                },
                child: Text('Action SNACKBAR'),
              ),
            ],
          ),
        ));
  }
}
