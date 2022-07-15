import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:rtdb_with_models/crud/crud.dart';
import 'package:rtdb_with_models/init_firebase_and_persistance.dart';
import 'package:rtdb_with_models/models/userModel.dart';

void main() async{
await  initFirebaseAndBindings();
  runApp( MaterialApp(
    home: Home(),
  ));
}


class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title:const Text("My Crud"),
      ),
      floatingActionButton: FloatingActionButton(onPressed: (){
    
      },
      child: IconButton(onPressed: (){
           print("taped");
    /*     UsersModel usersModel=UsersModel(id_user: '1', name: 'Minas', url: "url", bio: "bio");
        UserCrud.createUser(usersModel).then((value) {
          print("User created!!!!!");
        }); */

        UserCrud.getonUser("1").then((user) {
            print(user!.tojson());
        });

      }, icon: Icon(Icons.add)),
      ),
      body: Center(child: Container(child:const Text("Here"))),
    );
    
  }
}


