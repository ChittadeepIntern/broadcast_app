
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_database/firebase_database.dart';


final databaseRef = FirebaseDatabase.instance.ref('Users');
final FirebaseAuth auth = FirebaseAuth.instance;
User? user;