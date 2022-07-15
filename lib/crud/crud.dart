import 'package:firebase_database/firebase_database.dart';
import 'package:rtdb_with_models/models/userModel.dart';
// refs
final datacloud = FirebaseDatabase.instance.reference(); 

DatabaseReference Users =datacloud.reference().child("TestUser");
class UserCrud{
  
static Future createUser(UsersModel usersModel)async{
   //var key=Users.key;
try{
   await Users.child(usersModel.id_user.toString()).set(usersModel.tojson());
}
catch(e){
 print(e);
}
}


static Future<UsersModel?> getonUser(keychild) async {
  print('OKOKOK');
  final snap = await Users.child(keychild).get();
  if (snap.exists) {
   var user = Map<String, dynamic>.from(snap.value) ;
    return UsersModel.formJson(user);
  }
}


 static Future updateUser(UsersModel user) async {
 try {  await Users.child(user.id_user!).update(user.tojson()).then((_) {
      print('Update  committed.');
    });}
    catch(e){
      print(e);
    }
  }


static Future deleteUser(UsersModel user) async {
  try{
      await Users.child(user.id_user!).remove().then((_) {
      print('Transaction  committed.');
    });
  }catch(e){
    print(e);
  }
  } 


creatAListener(){
  Users.onChildAdded.listen((user) { // when child is added
  });

   Users.onChildChanged.listen((user) { // when child is updated
 
  });

   Users.onChildRemoved.listen((user) { // when child is removed
  });
} 

}