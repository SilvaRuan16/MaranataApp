class SettingsModel {
  final String titulo;
  final List<CardSettingsModel> listaConteudoCard;

  SettingsModel({required this.titulo, required this.listaConteudoCard});

  factory SettingsModel.fromJson(Map<String, dynamic> json) {
    return SettingsModel(
      titulo: json['appbar']['titulo'],
      listaConteudoCard: (json['body']['card']['lista_conteudo_card'] as List)
          .map((item) => CardSettingsModel.fromJson(item))
          .toList(),
    );
  }
}

class CardSettingsModel {
  final String titulo;
  final String descricao;

  CardSettingsModel({required this.titulo, required this.descricao});

  factory CardSettingsModel.fromJson(Map<String, dynamic> json) {
    return CardSettingsModel(
      titulo: json['titulo_card'],
      descricao: json['descricao_card'],
    );
  }
}
