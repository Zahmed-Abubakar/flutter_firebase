import 'dart:developer';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';



class Register extends StatefulWidget {
  const Register({super.key});

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {

  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();
  TextEditingController confirm = TextEditingController();
  bool isLoading = false;
  final auth = FirebaseAuth.instance;


  register () async {
    if(password.text != confirm.text){
      print("Must be the same password and confirm password");
    }else{
      try{
        isLoading = true;
        setState(() {});
        var response = await auth.createUserWithEmailAndPassword(
          email: email.text, password: password.text);

        log("Success");
      }catch(ex){
          print(ex);
      }
      isLoading = false;
      setState(() {});

    }
  }
  
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text('Register'),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
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
                margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
                child: TextField(
                  controller: confirm,
                  obscureText: true,
                  decoration: const InputDecoration(
                    hintText: "Confirm Passwrd",
                    border: OutlineInputBorder()
                  ),
                ),
              ),
    
              Container(
                width: double.infinity,
                margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
                height: 55,
                child: ElevatedButton(
                  onPressed: () => {
                    register(),
                    email.clear(),
                    password.clear(),
                    confirm.clear()
                    
                  },
                  child: isLoading ? const CircularProgressIndicator() : const Text("Submitt"),
                ),
              )         
             
    
            ],
          ),
        ),
      ),
    );
  }
}






