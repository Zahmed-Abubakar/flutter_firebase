import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_firebase/register.dart';
import './home.dart';
// import 'dart:async';





void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp( const  MaterialApp(
    debugShowCheckedModeBanner: false,
      home: Home(),
    ),
  );
}

























/*
 FLUTTER WITH FIREBASE
- login username
- go to console / add project 
- create project / add project
- my project name = flutterwithfirebase
- Create a project (Step 3 of 3) = default account 
- = Build 
- Authentication in users-ka lagu manage kareyo, in user lagu diwan keliyo
- riletime database waa version hore oo fire store database
- storage waa samirada musica lagu save gareyo
- firebase auth = package fireabse authentication

Creating connection between flutter & firebase
- flutter project sameyso
- laba qaab ayan isku xeri karnaa mid waa android midna waa iOS
- click project overview
- android dooro
- = wxa lgu wedina android package name / app id => yourfluttterProject -> android -> app -> build.gradle = default config 
- sha waa optional
- 3 class path soo coopy karee = plugin com.goolge kasoo qaado
- = si aan siku xerno wxan rabnaa firebase core package

Register user = package firebase auth

topics 06-jan-2023
savaing data to firebase
rendering data from firestore with read time update using / stream builder
colusion exam verview

future builder needs refresh data,
stream builder without refresh

*/


