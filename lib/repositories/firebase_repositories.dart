import 'dart:developer';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter_cubit_loadmore/models/user_model.dart';

class FirebaseRepositories {
  FirebaseRepositories._();

  static final FirebaseFirestore _firebase = FirebaseFirestore.instance;
  static final CollectionReference<Map<String, dynamic>> _profile = _firebase.collection('/app/users/profile');
  static const limit = 10;

  static Future<void> addDataMork() async {
    log('addDataMork ');
    try {
      WriteBatch batch = _firebase.batch();

      for (var user in UserModel.dataMork) {
        batch.set(_profile.doc(), user.toJson());
      }
      await batch.commit();
    } catch (e) {
      log('addDataMork catch -> $e');
    }
  }

  static Future<QuerySnapshot<Map<String, dynamic>>> fetchUserList({DocumentSnapshot<Object?>? startAfterDoc}) async {
    try {
      QuerySnapshot<Map<String, dynamic>> res;
      if (startAfterDoc != null) {
        res = await _profile.startAfterDocument(startAfterDoc).limit(limit).get();
      } else {
        res = await _profile.limit(limit).get();
      }
      return res;
    } catch (e) {
      rethrow;
    }
  }
}
