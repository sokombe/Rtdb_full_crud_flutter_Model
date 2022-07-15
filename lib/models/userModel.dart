import 'package:flutter/cupertino.dart';

class UsersModel{
  String? url;
  String? id_user;
  String? name;
  String? bio;


  UsersModel({@required this.id_user,@required this.name,@required  this.url,@required  this.bio});


//-------------------------------------convert to json-----------------------------------------------------------
  Map<String,dynamic> tojson(){
    return {
        'id_user': id_user,
        'name': name,
        'url':url,
        'bio':bio

    };
  }
  //------------------------------------ adapte json to our local model --------------------------------------------------------------------------- 

 factory UsersModel.formJson(Map<String,dynamic> json){
  return UsersModel(id_user: json["id_user"], name: json["name"], url: json['url'], bio: json['bio']);
}

}