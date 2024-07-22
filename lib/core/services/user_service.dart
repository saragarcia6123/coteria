import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';

class UserService {
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;

  Future<Map<String, dynamic>> getUserData(String userId) async {
    CollectionReference users = _firestore.collection('users');
    final docRef = users.doc(userId);
    DocumentSnapshot docSnapshot = await docRef.get();
    if (docSnapshot.exists) {
      Map<String, dynamic> userData =
          docSnapshot.data() as Map<String, dynamic>;
      return userData;
    } else {
      print('User document with ID $userId not found.');
    }
    return {};
  }

  Future<void> createUser(UserCredential credential) async {
    User? user = credential.user;

    if (user == null) return;

    Map<String, dynamic> userData = {
      'uid': user.uid,
      'email': user.email,
    };

    addUserToFirestore(userData);
  }

  Future<DocumentReference> addUserToFirestore(
      Map<String, dynamic> userData) async {
    CollectionReference users = _firestore.collection('users');
    try {
      DocumentReference userDocRef = await users.add(userData);
      print('User added with ID: ${userDocRef.id}');
      return userDocRef;
    } catch (error) {
      print('Error adding user: $error');
      return Future.error(error);
    }
  }

  Future<bool> userIdExists(String userId) async {
    try {
      CollectionReference users = _firestore.collection('users');
      DocumentReference userDocRef = users.doc(userId);
      DocumentSnapshot docSnapshot = await userDocRef.get();
      return docSnapshot.exists;
    } catch (error) {
      print('Error checking user ID existence: $error');
      return false;
    }
  }
}
