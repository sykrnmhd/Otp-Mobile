import 'package:firebase_core/firebase_core.dart';
import 'package:otp_mobile/firebase_options.dart';
import 'package:otp_mobile/screens/welcome_screen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'provider/auth_provider.dart';


void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_)=> AuthProvider()),
      ],
      child:  const MaterialApp(
        debugShowCheckedModeBanner: false,
        home:  WelcomeScreen(),
        title: "FlutterPhoneAuth",
      ),
    );
    
  }
}