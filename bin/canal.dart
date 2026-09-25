import 'mensagem.dart';
import 'usuario.dart';

class canal {
    final string nome;
    final list <usuario> _membros = [];
    final list<mensagem> _mensagens = [];

    canal(this.nome);

    list<usuario> get membros => list.unmodifiable(_membros);
    list <mensagem> get mensagens => list.unmodifiable(_mensagens);

    void adicionarMembro(Usuario usuario) {
        if (!membros.contains(usuario)) {
            _membros.add(usuario);
        }
    }
    void adicionarMensagem(Mensagem mensagem) {
        if (!_membros.contains(mensagem.autor)){
            adicionarMembro(mensagem.autor);
        }
        _mensagens.add(mensagem);
    }
}