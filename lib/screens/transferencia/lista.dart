import 'package:bytebank/Models/transferencia.dart';
import 'package:bytebank/components/item_transferencia.dart';
import 'package:bytebank/screens/transferencia/formulario.dart';
import 'package:flutter/material.dart';

const _titlePage = 'Transferências';

class ListaTransferencia extends StatefulWidget {
  final List<Transferencia> _transferencias =
      List.empty(growable: true); // ou [];

  @override
  State<StatefulWidget> createState() {
    return ListaTransferenciaState();
  }
}

class ListaTransferenciaState extends State<ListaTransferencia> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(_titlePage),
      ),
      body: ListView.builder(
        itemCount: widget._transferencias.length,
        itemBuilder: (context, index) {
          final item = widget._transferencias[index];
          return ItemTransferencia(item);
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(context, MaterialPageRoute(builder: (context) {
            return FormularioTransferencia();
          })).then((transferencia) => _atualiza(transferencia));
        },
        child: Icon(Icons.add),
      ),
    );
  }

  void _atualiza(Transferencia transferencia) {
    if (transferencia != null) {
      setState(() {
        widget._transferencias.add(transferencia);
      });
    }
  }
}
