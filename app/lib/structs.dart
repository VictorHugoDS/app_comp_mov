class ApiReturn {
  List<Itens>? itens;

  ApiReturn({this.itens});

  ApiReturn.fromJson(Map<String, dynamic> json) {
    if (json['itens'] != null) {
      itens = <Itens>[];
      json['itens'].forEach((v) {
        itens!.add(new Itens.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.itens != null) {
      data['itens'] = this.itens!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Itens {
  String? nome;
  String? classificacao;
  String? info;
  String? icon;
  List<Craft>? craft;

  Itens({this.nome, this.classificacao, this.info, this.icon, this.craft});

  Itens.fromJson(Map<String, dynamic> json) {
    nome = json['nome'];
    classificacao = json['classificacao'];
    info = json['info'];
    icon = json['icon'];
    if (json['craft'] != null) {
      craft = <Craft>[];
      json['craft'].forEach((v) {
        craft!.add(new Craft.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['nome'] = this.nome;
    data['classificacao'] = this.classificacao;
    data['info'] = this.info;
    data['icon'] = this.icon;
    if (this.craft != null) {
      data['craft'] = this.craft!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Craft {
  int? quantidade;
  String? nome;
  String? icon;

  Craft({this.quantidade, this.nome, this.icon});

  Craft.fromJson(Map<String, dynamic> json) {
    quantidade = json['quantidade'];
    nome = json['nome'];
    icon = json['icon'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['quantidade'] = this.quantidade;
    data['nome'] = this.nome;
    data['icon'] = this.icon;
    return data;
  }
}