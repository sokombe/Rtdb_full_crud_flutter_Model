
// init firebase
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/services.dart';

Future<void> initFirebaseAndBindings() async {

// init all binding before creating flutter components with firebase
 WidgetsBinding widgetsBinding =await WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
  await Firebase.initializeApp().then((value){
    // whenever your initialization is completed, remove the splash screen:
  });

  // for persistance
FirebaseDatabase database = new FirebaseDatabase();
 database.setPersistenceEnabled(true);
 database.setPersistenceCacheSizeBytes(10000000); 
 // end
}