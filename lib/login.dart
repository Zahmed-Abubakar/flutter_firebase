import 'dart:developer';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';



class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {

  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();
  TextEditingController confirm = TextEditingController();
  bool isLoading = false;

  final auth = FirebaseAuth.instance;

  login() async {
    try{
      isLoading = true;
      setState(() {});
      var response = await auth.signInWithEmailAndPassword(email: email.text, password: password.text);
      print("Success");
    }catch(e){
      print(e);
    }
    isLoading = false;
    setState(() {});
  }
 
  
  @override
  Widget build(BuildContext context) {
    var currentUser = auth.currentUser;
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.redAccent,
          title: Text('Login'),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
    
              SizedBox(height: 20,),
              Text(currentUser?.email??"", style: TextStyle(fontSize: 20),),
              SizedBox(height: 20,),
    
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
                child: TextField(
                  keyboardType: TextInputType.emailAddress,
                  controller: email,
                  decoration: const InputDecoration(
                    hintText: "Email",
                    border: OutlineInputBorder()
                  ),
                ),
              ),
    
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
                child: TextField(
                  controller: password,
                  obscureText: true,
                  decoration: const InputDecoration(
                    hintText: "Password",
                    border: OutlineInputBorder(),
                  ),
                ),
              ),
    
              Container(
                width: double.infinity,
                margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
                height: 55,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary: Colors.red
                  ),
                  onPressed: () => {
                    login(),
                    email.clear(),
                    password.clear(),
                    confirm.clear()
                  },
                  child: isLoading ? const CircularProgressIndicator() : const Text("Login", style: TextStyle(fontSize: 20),),
                ),
              )
    
            ],
          ),
        ),
      ),
    );
  }
}






