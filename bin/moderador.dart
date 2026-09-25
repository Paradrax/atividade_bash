import 'usuario.dart';

class Moderador extends Usuario {
    Moderador (super. nome);

    bool get podeModerar => true;
}