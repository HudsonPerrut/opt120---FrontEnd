/*class UserModel{
  late int? id;
  late String? nome;
  late String? email;
  late String? senha;*/

  /*UserModel({
    this.id,
    this.nome,
    this.email,
    this.senha
  });*/

  class UserModel{
  final int id;
  final String nome;
  final String email;
  final String senha;

  UserModel(this.id, this.nome, this.email, this.senha);

}

  /*UserModel(this.id, this.nome, this.email, this.senha);

  UserModel.fromJson(Map<String, dynamic> json){
    id = json["id"];
    nome = json["nome"];
    email = json["email"];
    senha = json["senha"];
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};

    _data["id"] = id.toString();
    _data["nome"] = nome;
    _data["email"] = email;
    _data["senha"] = senha;

    return _data;
  }
}*/