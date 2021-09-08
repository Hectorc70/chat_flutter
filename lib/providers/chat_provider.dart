import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';


class ChatProvider extends ChangeNotifier {
  CollectionReference _products =
      FirebaseFirestore.instance.collection('products');
}

