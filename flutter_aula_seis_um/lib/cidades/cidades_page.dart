import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_aula_seis_um/cidades/model/cidade.dart';

class CidadesPage extends StatefulWidget {
  const CidadesPage({super.key});

  @override
  State<CidadesPage> createState() => _CidadesPageState();
}

class _CidadesPageState extends State<CidadesPage> {
  var cidades = <Cidade>[];

  @override
  void initState() {
    super.initState();
    _loadCities();
  }

  Future<void> _loadCities() async {
    final cidadesJson = await rootBundle.loadString('assets/cidades.json');
    setState(() {
      var cidadesList = json.decode(cidadesJson);
      cidades =
          cidadesList.map<Cidade>((city) => Cidade.fromMap(city)).toList();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Cidades'),
      ),
      body: ListView.builder(
        itemCount: cidades.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(cidades[index].cidade),
            subtitle: Text(cidades[index].estado),
          );
        },
      ),
    );
  }
}
