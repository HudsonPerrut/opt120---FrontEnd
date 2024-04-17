
import 'package:flutter/material.dart';
//import 'package:flutter_application_1/models/user_model.dart';
import 'package:flutter_application_1/service/http.dart';
//import 'package:flutter_application_1/user.dart';
import 'package:flutter_application_1/user_update.dart';

class  userList extends StatelessWidget {
  const userList({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Lista Usuarios")),
      body: FutureBuilder(
        future: Http.getUsers(),
        builder: (BuildContext context,AsyncSnapshot snapshot) {
          if(!snapshot.hasData){
            return Center(
              child: CircularProgressIndicator(),
            );
          }
          else{
            List<dynamic> data = snapshot.data;


            return ListView.builder(
              itemCount: data.length,
              itemBuilder: (BuildContext context,int index) {
                return Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Column(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Text(
                          data[index].nome,
                          style: const TextStyle(
                            color: Colors.black,
                          ),
                        )
                      ]
                    ),
                    const SizedBox(
                        height: 50,
                        width: 50,
                    ),
                    Column(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Text(
                          data[index].email,
                          style: const TextStyle(
                            color: Colors.black,
                          ),
                        )
                      ]
                    ),
                    const SizedBox(
                        height: 50,
                        width: 50,
                    ),                    
                    Column(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Text(
                          data[index].senha,
                          style: const TextStyle(
                            color: Colors.black,
                          ),
                        )
                      ]
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width - 500,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          GestureDetector(
                            child: const Icon(Icons.edit),
                            onTap: (){
                              Navigator.push(context, MaterialPageRoute(builder: (context) => UserUpdate(data: data[index])));
                            },
                          ),
                          GestureDetector(
                            child: const Icon(Icons.delete, color: Colors.red,),
                            onTap: (){
                              print(data[index].id);
                            },
                          )
                        ],
                      )
                    )
                  ]
                );

                /*return ListTile(
                  leading: Icon(Icons.person),
                  title: Text(data[index].nome),
                  subtitle: Text(data[index].email),
                  children: [


                  ]
                );*/
              },
            );
          }
          
        },
      ),
    );
  }
}