

import '../models/user_data.dart';

class FirestoreRepository {
  const FirestoreRepository._();

  
  static Future<UserData> getUserData(String id) async {
    // try {
    //   final snapshot = await firestore.collection('users').doc(id).get();
    //   final data = snapshot.data() as Map<String, dynamic>;
    //   return UserData(score: data['score'] ?? 0);
    // } catch (error) {
    //   await addUser(id);
    //   return UserData.empty();
    // }
    return UserData.empty();
  }
}
