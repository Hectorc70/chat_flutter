import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class ChatProvider extends ChangeNotifier {
  CollectionReference _chats = FirebaseFirestore.instance.collection('chats');

  Future newMessage() {
    return _chats
        .add({
          'service': 1,
          'text': 'Hola como estas',
          'from': 'asaassaas',
          'to': '0002',
          'read': false,
          'dateTime': '080920211358'
        })
        .then((value) => [0, 'Mensaje Enviado'])
        .catchError((onError) => [1, onError.toString()]);
  }

  getChat() {
    List<dynamic> data = [];

    return _chats.where('service', isEqualTo: 1).get().then((value) {
      for (final messages in value.docs) {
        final productData = messages.data();
        data.add(productData);
      }
      return [0, data];
    });
  }
}
