import 'package:flutter/material.dart';
import 'package:flutter_application_1/atv_list.dart';
import 'package:flutter_application_1/models/atv_model.dart';
import 'package:flutter_application_1/service/http.dart';

import 'menu.dart';

class AtvUpdate extends StatefulWidget {
  final AtvModel data;
  const AtvUpdate( {super.key, required this.data});
  @override
  State<AtvUpdate> createState() => _AtvUpdateState();
}

  TextEditingController id = TextEditingController();
  TextEditingController titulo = TextEditingController();
  TextEditingController descricao = TextEditingController();
  TextEditingController dataAtv = TextEditingController();


class _AtvUpdateState extends State<AtvUpdate> {
  @override
  void initState(){
    super.initState();
    id.text = widget.data.id.toString();
    titulo.text = widget.data.titulo.toString();
    descricao.text = widget.data.descricao.toString();
    dataAtv.text = widget.data.data.toString();
  }
   
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
                    height: 650,
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
                          controller: id,
                          style: const TextStyle(color: Colors.black),
                          decoration: const InputDecoration(
                            prefixIcon: Icon(
                              Icons.title,
                              color: Colors.black,
                            ),
                            label: Text("ID"
                            ),
                          ),

                        ),
                        TextFormField(
                          textInputAction: TextInputAction.next,
                          controller: titulo,
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
                          controller: descricao,
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
                          controller: dataAtv,
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
                            onPressed: () {
                          if(id.text != ""){
                            var data = {
                              "id": id.text,
                              "titulo": titulo.text,
                              "descricao": descricao.text,
                              "data": dataAtv.text
                            };
                            Http.updateAtv(widget.data.id, data);
                            Navigator.push(context, MaterialPageRoute(builder: (context) => atvList()));

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