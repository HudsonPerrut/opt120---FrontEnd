import 'package:flutter/material.dart';
import 'package:flutter_application_1/models/user_model.dart';

class UserItem extends StatelessWidget {
  const UserItem({super.key, this.model, this.onDelete});

  final UserModel? model;
  final Function? onDelete;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0,
      margin: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 5.0),
      child: Container(
        width: 200,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(50),
        ),
        child: userWidget (context),
      ),

    );
  }

  Widget userWidget (context){
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            Text(
              model!.nome!,
              style: const TextStyle(
                color: Colors.black,
              ),
            )
          ]
        ),
        const SizedBox(width: 15),
        Column(
          children: [
            Text(
              model!.email!,
              style: const TextStyle(
                color: Colors.black,
              ),
            )
          ]
        ),
        const SizedBox(width: 15),
        Column(
          children: [
            Text(
              model!.senha!,
              style: const TextStyle(
                color: Colors.black,
              ),
            )
          ]
        ),
        Container(
          width: MediaQuery.of(context).size.width - 360,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              GestureDetector(
                child: const Icon(Icons.edit),
                onTap: (){},
              ),
              GestureDetector(
                child: const Icon(Icons.delete, color: Colors.red,),
                onTap: (){
                  onDelete!(model);
                },
              )
            ],
          )
        )
      ],
    );
  }
}