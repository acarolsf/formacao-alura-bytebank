class Transferencia {
  final double valor;
  final String nome;

  Transferencia(this.valor, this.nome);

  @override
  String toString() {
    return 'Transferencia{valor: $valor, nome: $nome}';
  }
}