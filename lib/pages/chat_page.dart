import 'package:flutter/material.dart';

class ChatPage extends StatelessWidget {
  const ChatPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Chat Tiempo Real'),
        ),
        body: Container(
          padding: EdgeInsets.all(30.0),
          child: ListView(
            children: [
              TextFormField(
                onEditingComplete: () {},
              ),
              TextButton(onPressed: () {}, child: Text('Enviar'))
            ],
          ),
        ));
  }
}
