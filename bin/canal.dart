import 'mensagem.dart';
import 'usuario.dart';

class Canal {
  final String nome;
  final List<Usuario> _membros = [];
  final List<Mensagem> _mensagens = [];

  Canal(this.nome);

  List<Usuario> get membros => List.unmodifiable(_membros);
  List<Mensagem> get mensagens => List.unmodifiable(_mensagens);

  void adicionarMembro(Usuario usuario) {
    if (!membros.contains(usuario)) {
      _membros.add(usuario);
    }
  }

  void adicionarMensagem(Mensagem mensagem) {
    if (!_membros.contains(mensagem.autor)) {
      adicionarMembro(mensagem.autor);
    }
    _mensagens.add(mensagem);
  }
}
