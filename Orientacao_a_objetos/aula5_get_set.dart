class Pessoa{
  //Tornando os atributos do objeto privados, deixando eles serem acessados somente somente dentro do objeto
  //Por isso vamos utilizar os Getters e Setters
  //Eles permitem fazer verificações, proteções 
  String _nome;
  int _idade;
  double _altura;

  Pessoa(this._nome, this._idade, this._altura);
  
  //Os getters servem para checar os valores
  String get nome{
    return _nome;
  }
  int get idade{
    return _idade;
  }
  double get altura{
    return _altura;
  }
  //Ou double get idade => _idade;
  //Os setters servem para fazer alterações nos valores, inserções dentre outras coisas
  set altura(double altura){
    if(altura > 0 && altura < 3.0){
      _altura = altura;
    }
  }


} 
void main(){
  Pessoa pessoa1 = new Pessoa("Andeson", 19, 1.5);
  print(pessoa1.idade);
  print(pessoa1.nome);
  print(pessoa1.altura);
}