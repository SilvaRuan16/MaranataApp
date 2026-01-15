class HomeModel {
  final String titulo;
  final List<BotaoHomeModel> listaConteudoBotao;
  final String versao;

  const HomeModel({
    required this.titulo,
    required this.listaConteudoBotao,
    required this.versao,
  });

  factory HomeModel.fromJson(Map<String, dynamic> json) {
    return HomeModel(
      titulo: json['appbar']['titulo'],
      listaConteudoBotao: (json['body']['conteudo_botao_home'] as List)
          .map((item) => BotaoHomeModel.fromJson(item)).toList(),
      versao: json['bottom']['versao_app'],
    );
  }
}

class BotaoHomeModel {
  final String titulo;
  final String icon;

  BotaoHomeModel({required this.titulo, required this.icon});

  factory BotaoHomeModel.fromJson(Map<String, dynamic> json) {
    return BotaoHomeModel(
      titulo: json['titulo_btn'],
      icon: json['icon'],
    );
  }
}
