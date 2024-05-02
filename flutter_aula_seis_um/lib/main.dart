import 'package:flutter/material.dart';
import 'package:flutter_aula_seis_um/botoes_rotacao_text/botoes_rotacao_text_page.dart';
import 'package:flutter_aula_seis_um/cidades/cidades_page.dart';
import 'package:flutter_aula_seis_um/container/container_page.dart';
import 'package:flutter_aula_seis_um/dialog_page/dialog_page.dart';
import 'package:flutter_aula_seis_um/forms/forms_page.dart';
import 'package:flutter_aula_seis_um/layout_builder/layout_builder.dart';
import 'package:flutter_aula_seis_um/media_query/media_query.dart';
import 'package:flutter_aula_seis_um/pages/home_page.dart';
import 'package:flutter_aula_seis_um/row_columns/row_column_page.dart';
import 'package:device_preview/device_preview.dart';
import 'package:flutter_aula_seis_um/snackbar/snackbar_page.dart';
import 'package:flutter_aula_seis_um/stack/stack_page.dart';

void main() {
  runApp(MyApp());
}

// void main() => runApp(
//       DevicePreview(
//         enabled: false, //kReleaseMode, //se está em produção ou não
//         builder: (context) => MyApp(), // Wrap your app
//       ),
//     );

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primaryColor: Colors.red,
        primaryColorLight: Colors.redAccent,
        primarySwatch: Colors.red,
        colorScheme: ColorScheme.fromSwatch(
          primarySwatch: Colors.red,
        ).copyWith(secondary: Colors.red),
        fontFamily: 'Roboto',
        // elevatedButtonTheme: ElevatedButtonThemeData(
        //   style: ElevatedButton.styleFrom(
        //     primaryColor: Colors.red,
        //   ),
        // ),
      ),

      locale: DevicePreview.locale(context),
      builder: DevicePreview.appBuilder,

      // darkTheme: ThemeData.dark(),
      routes: {
        '/': (_) => Home_Page(),
        '/container': (_) => ContainerPage(),
        '/rows_columns': (_) => RowsColumnPage(),
        '/media_query': (_) => MediaQueryPage(),
        '/layout_builder': (_) => LayoutBuilderPage(),
        'botoes_rotacao_texto': (_) => BotoesRotacaoTextoPage(),
        'dialog_page': (_) => DialogPageHome(),
        'snackbar_page': (_) => SncackBarPage(),
        'form_page': (_) => FormPage(),
        'cidade_page': (_) => CidadesPage(),
        'stack_page': (_) => StackPage(),
      },
    );
  }
}
