import 'canal.dart';
import 'mensagem.dart';
import 'moderador.dart';
import 'usuario.dart';

void main() {
  final moderador = Moderador('PG');
  final usuario = Usuario('Ana');

  final geral = Canal('Geral');
  final dart = Canal('Dart');
  final flutter = Canal('Flutter');

  dart.adicionarMembro(moderador);
  dart.adicionarMembro(usuario);
  dart.adicionarMensagem(Mensagem(moderador, 'Olá, DartCord!'));
  dart.adicionarMensagem(Mensagem(usuario, 'Continuem praticando'));

  print('DARTCORD');
  print('Servidor: Programação Mobile');
  print('Usuários online:');
  print(moderador.nome);
  print(usuario.nome);
  print('Canais:');
  print('#${geral.nome}');
  print('#${dart.nome}');
  print('#${flutter.nome}');
  print('Exibindo mensagens do canal:');
  print('#${dart.nome}');
  for (final mensagem in dart.mensagens) {
    print('${mensagem.autor.nome}: ${mensagem.conteudo}');
  }
}
