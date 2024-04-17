import 'package:flutter/material.dart';
import 'package:flutter_application_1/atv_list.dart';
import 'package:flutter_application_1/entrega_list.dart';
import 'package:flutter_application_1/user_list.dart';
import 'entrega.dart';
import 'user.dart';
import 'atividade.dart';

class Menu extends StatelessWidget {
  const Menu({super.key});

  @override
  Widget build(BuildContext context) {
    return  Drawer(
      child: ListView(
          children: [
            ListTile(
              leading: const Icon(Icons.person),
              title: Text("Criar usuário"),
              onTap: (){
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => User()));
              },
            ),
            ListTile(
              leading: const Icon(Icons.pending_actions),
              title: Text("Criar atividade"),
              onTap: (){
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => atividade()));
              },
            ),
              ListTile(
              leading: const Icon(Icons.pending_actions),
              title: Text("Criar Entrega"),
              onTap: (){
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Entrega()));
              },
            ),
              ListTile(
              leading: const Icon(Icons.pending_actions),
              title: Text("Usuarios"),
              onTap: (){
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const userList()));
              },
            ),
            ListTile(
              leading: const Icon(Icons.pending_actions),
              title: Text("Atividades"),
              onTap: (){
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const atvList()));
              },
            ),
            ListTile(
              leading: const Icon(Icons.pending_actions),
              title: Text("Entregas"),
              onTap: (){
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const EntregaList()));
              },
            ),
            
          ],
      ),
    );
  }
}