import 'package:flutter/material.dart';

class DialogCustom extends Dialog {
  DialogCustom(BuildContext context)
      : super(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
          child: Container(
            height: 300,
            width: 300,
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text('Titulo X'),
                ),
                TextButton(
                  onPressed: () => Navigator.of(context).pop(),
                  child: Text('Fechar Dialog'),
                ),
              ],
            ),
          ),
        );
}
