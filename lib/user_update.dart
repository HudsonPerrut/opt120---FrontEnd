//import 'dart:html';

import 'package:flutter/material.dart';
import 'package:flutter_application_1/models/user_model.dart';
import 'package:flutter_application_1/service/http.dart';
//import 'package:flutter_application_1/user.dart';
import 'package:flutter_application_1/user_list.dart';
import 'menu.dart';

class UserUpdate extends StatefulWidget {
  final UserModel data;
  const UserUpdate( {super.key, required this.data});
  @override
  State<UserUpdate> createState() => _UserUpdateState();
}

TextEditingController id = TextEditingController();
TextEditingController nome = TextEditingController();
TextEditingController email = TextEditingController();
TextEditingController senha = TextEditingController();
bool isEdit = false;



class _UserUpdateState extends State<UserUpdate> {
  bool _isobscure = true;

  @override
  void initState(){
    super.initState();
    id.text = widget.data.id.toString();
    nome.text = widget.data.nome.toString();
    email.text = widget.data.email.toString();
    senha.text = widget.data.senha.toString();
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Menu(),
      appBar: AppBar(
        title: const Text(" Atualizar Usuário"),
      ),
      body: Container(
        color: Color.fromARGB(255, 49, 184, 154),
        child: Center(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              padding: const EdgeInsets.all(50),
              height: 470,
              width: 800,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Column(
                children: [
                  const Text(
                    "Novo usuário",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 40,
                    ),
                  ),
                  const SizedBox(
                    height: 50,
                  ),
                  TextFormField(
                    textInputAction: TextInputAction.next,
                    controller: id,
                    style: const TextStyle(color: Colors.black),
                    decoration: const InputDecoration(
                      prefixIcon: Icon(
                        Icons.person,
                        color: Colors.black,
                      ),
                      label: Text("ID Usuario"
                      ),
                    ),
                  ),
                  TextFormField(
                    textInputAction: TextInputAction.next, 
                    controller: nome,
                    style: const TextStyle(color: Colors.black),
                    decoration: const InputDecoration(
                      prefixIcon: Icon(
                        Icons.person,
                        color: Colors.black,
                      ),
                      label: Text("Usuário"
                      ),
                    ),
                  ),
                  TextFormField(
                    textInputAction: TextInputAction.next,
                    controller: email,
                    style: const TextStyle(color: Colors.black),
                    decoration: const InputDecoration(
                      prefixIcon: Icon(
                        Icons.email,
                        color: Colors.black,
                      ),
                      label: Text("E-mail"
                      ),
                    ),

                  ),
                  TextFormField(
                    obscureText: _isobscure,
                    textInputAction: TextInputAction.next,
                    controller: senha,
                    style: const TextStyle(color: Colors.black),
                    decoration: InputDecoration(
                      prefixIcon: const Icon(                  
                        Icons.lock,
                        color: Colors.black,
                      ),
                      suffixIcon: IconButton(onPressed: (){
                          setState(() {
                            _isobscure =! _isobscure;                                                                                                 
                          });
                      }, icon: Icon(_isobscure ? Icons.visibility : Icons.visibility_off)),
                      label: const Text("Senha"
                      ),
                    ),

                  ),
                  TextButton(
                      onPressed: () {
                        if(id.text != ""){
                          var data = {
                            "id": id.text,
                            "nome": nome.text,
                            "email": email.text,
                            "senha": senha.text
                          };
                          Http.updateUser(widget.data.id, data);
                          Navigator.push(context, MaterialPageRoute(builder: (context) => userList()));

                        }
                      }, child: const Text("Salvar"))
                ],
              ),
            ),
          ],
        )),
      ),
    );
  }
}