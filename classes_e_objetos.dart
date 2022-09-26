void main(){
  Pessoa variavel = Pessoa();
  variavel.usuario = "Andeson Silva";
  variavel.senha = "12345";
  variavel.autenticar(variavel.usuario, variavel.senha);
}

class Pessoa{
  late String usuario;
  late String senha;
  void autenticar(String usuario, String senha){
    if(usuario == "Andeson Silva" && senha == "12345"){
      print("Usuário logado!!");
    }else{
      print("Erro!!");
    }
  }
}