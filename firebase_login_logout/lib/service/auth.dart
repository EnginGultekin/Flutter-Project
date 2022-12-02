import 'package:firebase_auth/firebase_auth.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class AuthService {

  // Authenticationdan ve Cloud Firebase'ten birer instance oluşturduk
  final FirebaseAuth _auth = FirebaseAuth.instance;
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;

  /// SignIN fonksyonu
  Future<User?> signIn(String email , String password) async{
    var user = await _auth.signInWithEmailAndPassword(email: email, password: password);
    return user.user;
  }

  /// SignOut fonksyonu
  signOut() async{
    return await _auth.signOut();
  }

  /// Register fonksyonu
  Future<User?> createUsers(String name ,String email ,String password) async{
    var user = await _auth.createUserWithEmailAndPassword(email: email, password: password);

    await _firestore
        .collection('Users')
        .doc(user.user?.uid)
        .set({
          'userName' : name,
          'email' : email,
    });
    return user.user;
  }
}