class Carro{
  var velocidade_maxima;
  // O _ antes da variável faz com que esse atributo não seja mais visivel fora da classe 
  // Por isso vamos usar os gets(retornar os valores) e os setters(alteracoes e insercões)
  var _velocidade_atual = 0;

  Carro([this.velocidade_maxima = 200]);

  int get velocidade_atual{
    return this._velocidade_atual;
  }
  void  set velecidade_atual(int nova_velocidade){
    bool deltaValido = (_velocidade_atual - nova_velocidade).abs() <= 5;
    if(deltaValido && nova_velocidade >= 0){
      this._velocidade_atual = nova_velocidade;
    }
  }
  int acelerar(){
      if(_velocidade_atual + 5 >= velocidade_maxima){
        _velocidade_atual = velocidade_maxima;
      }else{
          _velocidade_atual += 5;
      }
    
    return _velocidade_atual;
  }
  
  int freiar(){
      if(_velocidade_atual - 5 <= 0){
        _velocidade_atual = 0;
      }else{
        _velocidade_atual -= 5;
      }
    
    return _velocidade_atual;
  }
  bool estaNoLimite(){
    return _velocidade_atual == velocidade_maxima;
  }
  bool estaParado(){
    return _velocidade_atual == 0;
  }
}