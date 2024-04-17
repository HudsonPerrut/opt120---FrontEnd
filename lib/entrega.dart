import 'package:flutter/material.dart';
import 'package:flutter_application_1/service/http.dart';
import 'package:flutter_application_1/entrega_list.dart';

import 'menu.dart';

class Entrega extends StatelessWidget {
  const Entrega ({super.key});

  @override
  Widget build(BuildContext context) {
  TextEditingController usuario_id = TextEditingController();
  TextEditingController atividade_id = TextEditingController();
  TextEditingController entrega = TextEditingController();
  TextEditingController nota = TextEditingController();
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
                        controller: usuario_id,
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
                        controller: atividade_id,
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
                        controller: nota,
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
                        controller: entrega,
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
                          onPressed: () {
                            if(usuario_id.text != ""){
                              var data = {
                                "usuario_id": usuario_id.text,
                                "atividade_id": atividade_id.text,
                                "nota": nota.text,
                                "entrega": entrega.text
                              };
                              Http.postEntrega(data);
                              Navigator.push(context, MaterialPageRoute(builder: (context) => EntregaList()));

                            }
                          }, child: const Text("Entregar Atividade"))
                    ],
                  ),
                ),
              ],
            )),
      ),
    );
  }
}