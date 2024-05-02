import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class FormPage extends StatefulWidget {
  const FormPage({super.key});

  @override
  State<FormPage> createState() => _FormPageState();
}

class _FormPageState extends State<FormPage> {
  final formKey = GlobalKey<FormState>();

  final nameEC = TextEditingController();

  @override
  void dispose() {
    // TODO: implement dispose
    nameEC
        .dispose(); // libera o recurso utilizado pelo controlador, precisa ser feito
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Formulários'),
      ),
      body: SingleChildScrollView(
        child: Form(
          key: formKey,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                TextFormField(
                  controller: nameEC, // controlador do campo
                  maxLines:
                      null, // permite várias linhas e vai aumentando conforme o texto
                  // melhor colocar em um singleChildScrollView
                  decoration: const InputDecoration(
                    labelText: 'Nome',
                    labelStyle: TextStyle(
                      color: Colors.green,
                      fontSize: 20,
                    ),
                    isDense: true, // diminui o tamanho do campo
                    hintText: 'Digite seu nome',
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                        borderSide: BorderSide(
                          color: Colors.green,
                          width: 2,
                        )),
                  ),
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Digite seu nome, animal.';
                    }
                    return null;
                  },
                ),
                SizedBox(height: 20),
                DropdownButtonFormField(
                  value: 'solteiro',
                  elevation: 16,
                  icon: const Icon(Icons.arrow_downward),
                  validator: (value) {
                    if (value == null) {
                      return 'Selecione um estado civil';
                    }
                    return null;
                  },
                  decoration: const InputDecoration(
                    labelText: 'Estado Civil',
                    labelStyle: TextStyle(
                      color: Colors.green,
                      fontSize: 20,
                    ),
                    isDense: true,
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                        borderSide: BorderSide(
                          color: Colors.green,
                          width: 2,
                        )),
                  ),
                  items: const [
                    DropdownMenuItem(
                      value: 'solteiro',
                      child: Text('Solteiro'),
                    ),
                    DropdownMenuItem(
                      value: 'casado',
                      child: Text('Casado'),
                    ),
                    DropdownMenuItem(
                      value: 'divorciado',
                      child: Text('Divorciado'),
                    ),
                    DropdownMenuItem(
                      value: 'viuvo',
                      child: Text('Viúvo'),
                    ),
                  ],
                  onChanged: (value) {
                    print(value);
                  },
                ),
                ElevatedButton(
                  onPressed: () {
                    var formValid = formKey.currentState?.validate() ?? false;
                    if (formValid) {
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(
                          content:
                              Text('Formulário válido (Name: ${nameEC.text})'),
                        ),
                      );
                    } else {
                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(
                          content: Text('Formulário inválido'),
                        ),
                      );
                    }
                  },
                  child: Text('Salvar'),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
