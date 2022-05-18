import 'package:flutter/material.dart';
import 'package:rchat/screens/loading_screen.dart';
import 'package:rchat/screens/welcome_screen.dart';
import 'package:rchat/screens/login_screen.dart';
import 'package:rchat/screens/registration_screen.dart';
import 'package:rchat/screens/chat_screen.dart';
import 'package:firebase_core/firebase_core.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Firebase.initializeApp();

  runApp(rchat());
}

class rchat extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: WelcomeScreen.id,
      routes: {
        WelcomeScreen.id: (context) => WelcomeScreen(),
        LoginScreen.id: (context) => LoginScreen(),
        RegistrationScreen.id: (context) => RegistrationScreen(),
        ChatScreen.id: (context) => ChatScreen(),
        LoadingScreen.id: (context) => LoadingScreen(),
      },
    );
  }
}
