import 'package:chat_flutter/pages/chat_page.dart';
import 'package:chat_flutter/providers/chat_provider.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);

    return MultiProvider(
        providers: [
          ChangeNotifierProvider(
            create: (context) => ChatProvider(),
          )
        ],
        child: MaterialApp(
            title: 'Flutter Demo',
            home: ChatPage(),
            debugShowCheckedModeBanner: false,
            theme: ThemeData(
              primaryColor: Color.fromRGBO(236, 162, 171, 1),
              colorScheme: ColorScheme(
                primary: Color.fromRGBO(236, 162, 171, 1),
                primaryVariant: Colors.white,
                secondary: Colors.white,
                secondaryVariant: Color.fromRGBO(74, 9, 6, 1),
                surface: Color.fromRGBO(57, 62, 70, 1),
                background: Color.fromRGBO(57, 62, 70, 1),
                error: Colors.red.shade300,
                onPrimary: Color.fromRGBO(57, 62, 70, 1),
                onSecondary: Color.fromRGBO(57, 62, 70, 1),
                onSurface: Color.fromRGBO(57, 62, 70, 1),
                onBackground: Color.fromRGBO(57, 62, 70, 1),
                onError: Colors.red.shade300,
                brightness: Brightness.light,
              ),
            )));
  }
}
