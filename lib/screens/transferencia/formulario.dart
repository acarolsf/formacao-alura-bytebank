import 'package:bytebank/Models/transferencia.dart';
import 'package:bytebank/components/editor.dart';
import 'package:flutter/material.dart';

const _pageTitle = 'Formulário de Transferência';
const _titleInputName = 'Nome';
const _titleInputValor = 'Valor';
const _placeholderName = 'João';
const _placeholderValor = '0.00';
const _btnTitle = 'Confirmar';

class FormularioTransferencia extends StatefulWidget {
  @override
  _FormularioTransferenciaState createState() => _FormularioTransferenciaState();
}

class _FormularioTransferenciaState extends State<FormularioTransferencia> {

  final TextEditingController _nomeController = TextEditingController();
  final TextEditingController _valorController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(_pageTitle),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Editor(
              title: _titleInputName,
              controller: _nomeController,
              placeholder: _placeholderName,
              keyboardType: TextInputType.name,
            ),
            Editor(
              title: _titleInputValor,
              controller: _valorController,
              placeholder: _placeholderValor,
              keyboardType: TextInputType.number,
              icon: Icons.monetization_on,
            ),
            ElevatedButton(
              onPressed: () => _criarTransferencia(context),
              child: Text(_btnTitle),
            ),
          ],
        ),
      ),
    );
  }

  _criarTransferencia(BuildContext context) {
    final String nome = _nomeController.text;
    final double? valor = double.tryParse(_valorController.text);

    if (valor != null) {
      final transferencia = Transferencia(valor, nome);
      Navigator.pop(context, transferencia);
    }
  }
}
