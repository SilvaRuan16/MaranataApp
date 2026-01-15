// ignore: dangling_library_doc_comments
/// ESTE ARQUIVO SERÁ RESPONSAVEL POR CRIAR UM PADRÃO
/// PARA CAPTURA O JSON LOCAL DO SISTEMA, COMO TEXTO DE
/// BOTÕES, APPBAR, ENTRE OUTROS.

abstract class LocalData {
  Future<dynamic> fetchLocalData(String path);
}
