void main (List<String> arguments){
  import 'canal.dart';
  import 'mensagem.dart';
  import 'moderador.dart';
  import 'usuario.dart';

  void main (){
    final moderator = Moderador('PG');
    final user1 = Usuario('Ana');

    final geral = Canal('Geral');
    final dart = Canal('Dart');
    final flutter = Canal('Flutter');

    dart.adicionarMembro(moderator);
    dart.adicionarMembro(user1);
    dart.adicionarMensagem(Mensagem(moderator, 'Olá.DartCord!'));
    dart.adicionarMensagem(Mensagem(usuario, 'Continuem praticando'));

    print ('DARTCORD');
    print ('Servidor: Programação Mobile');
    print ('Usuários onlime:)');
    print(moderador.nome);
    print(usuario.nome);
    print('Canais:');
    Print('#${geral.nome}');
    print('#${dart.nome}');
    print('#${flutter.nome}');
    print('Exibindo mensagens do canal:');
    print('#${dart.nome}');
    for (final mensagem in dart.mensagens){
      print('${mensagem.autor.nome}: ${mensagem.conteudo}');
    }
  }
}