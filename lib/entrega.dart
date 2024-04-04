import 'package:flutter/material.dart';

import 'menu.dart';

class Entrega extends StatelessWidget {
  const Entrega ({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Menu(),
      appBar: AppBar(
        title: const Text("Entrega Atividade"),
      ),
      body: Container(
        color: Color.fromARGB(255, 49, 184, 154),
        child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [

                Container(
                  padding: const EdgeInsets.all(50),
                  height: 600,
                  width: 800,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Column(
                    children: [
                      const Text(
                        "Entrega Atividade",
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
                            Icons.title,
                            color: Colors.black,
                          ),
                          label: Text("Atividade"
                          ),
                        ),

                      ),
                      const SizedBox(height: 30),
                      TextFormField(
                        textInputAction: TextInputAction.next,
                        style: const TextStyle(color: Colors.black),
                        decoration: const InputDecoration(
                          prefixIcon: Icon(
                            Icons.text_increase,
                            color: Colors.black,
                          ),
                          label: Text("Nota Obtida"
                          ),
                        ),

                      ),
                      const SizedBox(height: 30),
                      TextFormField(
                        textInputAction: TextInputAction.next,
                        style: const TextStyle(color: Colors.black),
                        decoration: const InputDecoration(
                          prefixIcon: Icon(
                            Icons.date_range,
                            color: Colors.black,
                          ),
                          label: Text("Data de Entrega"
                          ),
                        ),

                      ),
                      const SizedBox(height: 30),
                      TextButton(
                          onPressed: () {}, child: const Text("Entregar Atividade"))
                    ],
                  ),
                ),
              ],
            )),
      ),
    );
  }
}