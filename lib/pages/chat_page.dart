import 'package:chat_flutter/providers/chat_provider.dart';
import 'package:chat_flutter/widgets/buttons_widget.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ChatPage extends StatelessWidget {
  const ChatPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Chat Tiempo Real'),
        ),
        body: _BodyChat());
  }
}

class _BodyChat extends StatefulWidget {
  _BodyChat({Key? key}) : super(key: key);

  @override
  _BbodyChatState createState() => _BbodyChatState();
}

class _BbodyChatState extends State<_BodyChat> {
  List<dynamic> _messages = [];
  bool isActive = true;
  @override
  void initState() {
    super.initState();
    _getMessages();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsetsDirectional.all(30.0),
        child: Stack(
          children: [
            ListView(
              children: [],
            ),
            Align(
              alignment: AlignmentDirectional.bottomCenter,
              child: ButtonCustomSubmit(
                isActive: isActive,
                textName: 'Enviar Mensaje',
                functionAction: _submitM,
              ),
            )
          ],
        ));
  }

  _submitM(BuildContext context) async {
    final chat = Provider.of<ChatProvider>(context, listen: false);
    setState(() {
      isActive = false;
    });
    final resp = await chat.newMessage();
    setState(() {
      isActive = true;
    });
  }

  Future _getMessages() async {
    final chat = Provider.of<ChatProvider>(context, listen: false);
    await chat.getChat().then((value) {
      setState(() {
        if (value[0] == 0) {
          _messages = value[1];
        }
      });
    });
  }
}
