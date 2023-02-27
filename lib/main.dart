import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:game_management/app/app.dart';
import 'package:game_management/app/core/injection_container.dart';
import 'package:game_management/firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  configureDependencies();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  
  runApp
  (const MyApp(
    
    
  ));
}
