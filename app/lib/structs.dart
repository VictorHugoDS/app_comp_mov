import 'itemreceita.dart';

class Item {
  final String nome;
  final String classificacao;
  final String info;
  final String icon;
  final Iterable<ItemReceita> receita;

  Item({required this.nome, required this.classificacao, required this.info, required this.icon, required this.receita});
}

class Resp {
  late Iterable<Item> data;

  Resp({data});

  factory Resp.fromJson(Map<String, dynamic> json) {
    return Resp(
        data: json['data']
    );
  }
}