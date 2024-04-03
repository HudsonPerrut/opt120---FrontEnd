import 'package:flutter/material.dart';
import 'menu.dart';

class User extends StatefulWidget {
  const User({super.key});

  @override
  State<User> createState() => _UserState();
}

class _UserState extends State<User> {
  bool _isobscure = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Menu(),
      appBar: AppBar(
        title: const Text(" Novo Usuário"),
      ),
      body: Container(
        color: Color.fromARGB(255, 49, 184, 154),
        child: Center(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              padding: const EdgeInsets.all(50),
              height: 500,
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
                  const SizedBox(height: 30),
                  TextFormField(
                    textInputAction: TextInputAction.next,
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
                  const SizedBox(height: 30),
                  TextFormField(
                    obscureText: _isobscure,
                    textInputAction: TextInputAction.next,
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
                  const SizedBox(height: 30),
                  TextButton(
                      onPressed: () {}, child: const Text("Criar usuário"))
                ],
              ),
            ),
          ],
        )),
      ),
    );
  }
}