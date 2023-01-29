import 'package:cameron_firebase/home_camera.dart';
import 'package:cameron_firebase/otp.dart';
import 'package:cameron_firebase/phone.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: 'phone',
      routes: {
        'phone': (context) => MyPhone(),
        'otp': (context) => MyOtp(),
        'home_camera': (context) => MyHome(),
        // 'Video_page': (context) => VideoPage(filePath: '',),
      }));
}
