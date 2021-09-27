main(){
  String nome = "Andeson";
  String status = "aprovado";
  double nota = 8.0;

  String texto = nome + " está " + status + " pq tirou nota " + nota.toString() + " !";
  String frase = "$nome está $status pq tirou a nota $nota!";
  print(texto);
  print(frase);

  print("1 + 1 = ${1 + 1}");
}