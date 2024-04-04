import 'package:flutter/material.dart';

import 'menu.dart';

class atividade extends StatelessWidget {
  const atividade({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Menu(),
      appBar: AppBar(
        title: const Text("Nova Atividade"),
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
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Column(
                    children: [
                      const Text(
                        "Nova Atividade",
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
                            Icons.title,
                            color: Colors.black,
                          ),
                          label: Text("Título"
                          ),
                        ),

                      ),
                      const SizedBox(height: 30),
                      TextFormField(
                        textInputAction: TextInputAction.next,
                        style: const TextStyle(color: Colors.black),
                        decoration: const InputDecoration(
                          prefixIcon: Icon(
                            Icons.description,
                            color: Colors.black,
                          ),
                          label: Text("Descrição"
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
                          label: Text("Data Limite"
                          ),
                        ),

                      ),
                      const SizedBox(height: 30),
                      TextButton(
                          onPressed: () {}, child: const Text("Criar Atividade"))
                    ],
                  ),
                ),
              ],
            )),
      ),
    );
  }
}