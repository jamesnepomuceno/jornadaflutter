import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_aula_seis_um/dialog_page/dialog_custom.dart';

class DialogPageHome extends StatelessWidget {
  const DialogPageHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Dialog Page'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                showDialog(
                    barrierDismissible: false,
                    context: context,
                    builder: (context) => DialogCustom(context));
              },
              child: Text('Dialog'),
            ),
            ElevatedButton(
              onPressed: () {
                showDialog(
                    barrierDismissible: true,
                    context: context,
                    builder: (context) {
                      return SimpleDialog(
                        title: Text('Titulo X'),
                        contentPadding: EdgeInsets.all(10),
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text('Item 1'),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text('Item 2'),
                          ),
                          TextButton(
                            onPressed: () => Navigator.of(context).pop(),
                            child: Text('Fechar Dialog'),
                          ),
                        ],
                      );
                    });
              },
              child: Text('SimpleDialog'),
            ),
            ElevatedButton(
              onPressed: () {
                showDialog(
                    context: context,
                    builder: (context) {
                      if (Platform.isIOS) {
                        return CupertinoAlertDialog(
                          title: Text('Titulo Alerta'),
                          content: Text('Salva ou cancela?'),
                          actions: [
                            CupertinoDialogAction(
                              onPressed: () {},
                              child: Text('Salvar'),
                            ),
                            CupertinoDialogAction(
                              onPressed: () {},
                              child: Text('Cancelar'),
                            ),
                          ],
                        );
                      }

                      if (Platform.isAndroid) {
                        return AlertDialog(
                          title: Center(child: Text('Titulo Alerta')),
                          content: Text('Salva ou cancela?'),
                          actions: [
                            TextButton(
                              onPressed: () {},
                              child: Text('Salvar'),
                            ),
                            TextButton(
                              onPressed: () {},
                              child: Text('Cancelar'),
                            ),
                          ],
                        );
                      }

                      return AlertDialog(
                        title: Center(child: Text('Titulo Alerta')),
                        content: Text('Salva ou cancela?'),
                        actions: [
                          TextButton(
                            onPressed: () {},
                            child: Text('Salvar'),
                          ),
                          TextButton(
                            onPressed: () {},
                            child: Text('Cancelar'),
                          ),
                        ],
                      );
                    });
              },
              child: Text('Alert Dialog'),
            ),
            ElevatedButton(
              onPressed: () async {
                final selectedTime = await showTimePicker(
                  context: context,
                  initialTime: TimeOfDay.now(),
                );
                print('a hora e $selectedTime');
              },
              child: Text('Time Piker'),
            ),
            ElevatedButton(
              onPressed: () async {
                final selectedDate = await showDatePicker(
                    context: context,
                    firstDate: DateTime.now(),
                    lastDate: DateTime.now());
                print('data selecionada $selectedDate');
              },
              child: Text('Date Piker'),
            ),
          ],
        ),
      ),
    );
  }
}
