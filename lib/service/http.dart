import 'package:flutter_application_1/models/user_model.dart';
//import 'package:flutter_application_1/user.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class Http{
  static String url = "http://192.168.1.105:3000/";

  static postUser( Map<String, dynamic> pdata) async{
    try{
      print(pdata);
      final res = await http.post(Uri.parse("${url}novoUser"),body: pdata);

      if (res.statusCode == 200){
        var data = jsonDecode(res.body.toString());
        print(data);
      }
      else{
        print("Failed to load data");
      }
    }
    catch(e){
      print(e.toString());
    }
  }

static getUsers() async {
    List<UserModel> users = [];
    try {
      final res = await http.get(Uri.parse("${url}usuarios"));

      if (res.statusCode == 200) {
        var data = jsonDecode(res.body);
        print(data);

        data.forEach((value) => {
              users.add(
                UserModel(
                  value['id'],
                  value['nome'],
                  value['email'],
                  value['senha'],
                ),
              )
            });
            return users;
      }
      else{
        return [];
      }
    } catch (e) {
      print(e.toString());
    }
  }

  static updateUser(id, body) async{
    try{
      final res = await http.put(Uri.parse("${url}atualizar/usuario/$id"),body: body);

      if (res.statusCode == 200){
        print(jsonDecode(res.body));
      }
      else{
        print("Failed to upload data");
      }
    }
    catch(e){
      print(e.toString());
    }
  }

}