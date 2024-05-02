import 'package:flutter/material.dart';

enum PopupMenuPages {
  container,
  rows_columns,
  media_query,
  layout_builder,
  botoes_rotacao_texto,
  dialog_page,
  snackbar_page,
  form_page,
  cidade_page,
  stack_page,
}

class Home_Page extends StatelessWidget {
  const Home_Page({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text('Home Page'),
        actions: [
          PopupMenuButton<PopupMenuPages>(
              icon: const Icon(Icons.more_vert),
              tooltip: 'Selecione uma opção',
              onSelected: (PopupMenuPages valueSelected) {
                switch (valueSelected) {
                  case PopupMenuPages.container:
                    Navigator.pushNamed(context, '/container');
                    break;
                  case PopupMenuPages.rows_columns:
                    Navigator.pushNamed(context, '/rows_columns');
                    break;
                  case PopupMenuPages.media_query:
                    Navigator.pushNamed(context, '/media_query');
                    break;
                  case PopupMenuPages.layout_builder:
                    Navigator.pushNamed(context, '/layout_builder');
                    break;
                  case PopupMenuPages.botoes_rotacao_texto:
                    Navigator.pushNamed(context, 'botoes_rotacao_texto');
                    break;
                  case PopupMenuPages.dialog_page:
                    Navigator.pushNamed(context, 'dialog_page');
                    break;
                  case PopupMenuPages.snackbar_page:
                    Navigator.pushNamed(context, 'snackbar_page');
                    break;
                  case PopupMenuPages.form_page:
                    Navigator.pushNamed(context, 'form_page');
                    break;
                  case PopupMenuPages.cidade_page:
                    Navigator.pushNamed(context, 'cidade_page');
                    break;
                  case PopupMenuPages.stack_page:
                    Navigator.pushNamed(context, 'stack_page');
                    break;
                }
              },
              itemBuilder: (BuildContext context) {
                return <PopupMenuItem<PopupMenuPages>>[
                  PopupMenuItem<PopupMenuPages>(
                    value: PopupMenuPages.container,
                    child: const Text('Container'),
                  ),
                  PopupMenuItem<PopupMenuPages>(
                    value: PopupMenuPages.rows_columns,
                    child: const Text('Rows & Columns'),
                  ),
                  PopupMenuItem<PopupMenuPages>(
                    value: PopupMenuPages.media_query,
                    child: const Text('Media Query'),
                  ),
                  PopupMenuItem<PopupMenuPages>(
                    value: PopupMenuPages.layout_builder,
                    child: const Text('Layout Builder'),
                  ),
                  PopupMenuItem<PopupMenuPages>(
                    value: PopupMenuPages.botoes_rotacao_texto,
                    child: const Text('Botões e rotação de texto'),
                  ),
                  PopupMenuItem<PopupMenuPages>(
                    value: PopupMenuPages.dialog_page,
                    child: const Text('Dialog Page'),
                  ),
                  PopupMenuItem<PopupMenuPages>(
                    value: PopupMenuPages.snackbar_page,
                    child: const Text('Snackbar Page'),
                  ),
                  PopupMenuItem<PopupMenuPages>(
                    value: PopupMenuPages.form_page,
                    child: const Text('Form Page'),
                  ),
                  PopupMenuItem<PopupMenuPages>(
                    value: PopupMenuPages.cidade_page,
                    child: const Text('Cidade Page'),
                  ),
                  PopupMenuItem<PopupMenuPages>(
                    value: PopupMenuPages.stack_page,
                    child: const Text('Stack Page'),
                  ),
                ];
              }),
        ],
      ),
      body: Container(),
    );
  }
}
