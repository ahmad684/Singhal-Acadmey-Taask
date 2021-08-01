import 'package:cloud_firestore/cloud_firestore.dart';

class SaveData {
  final db = FirebaseFirestore.instance;
  void insertData(String question, Map<String, dynamic> option, ) {

      db.collection(question).add(option);

    //print(db.collection(col).get());
  }}