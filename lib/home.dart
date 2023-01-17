import 'package:flutter/material.dart';
import 'package:flutter_firebase/login.dart';
import 'package:flutter_firebase/register.dart';
import 'package:flutter_firebase/signwithgoogle.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text("Flutter with Firebase👋"),
          centerTitle: true,
        ),
        body: Container(
          margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
    
                Container(
                  width: 280,
                  height: 60,
                  margin: const EdgeInsets.symmetric(horizontal: 6, vertical: 8),
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      primary: Color.fromARGB(255, 250, 243, 243)
                    ),
                    onPressed: () {
                       Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const Register()),
                      );
                    },
                    child: Text("Register", style: TextStyle(fontSize: 25, color: Colors.black),),
                  ),
                ),
    
                Container(
                  width: 280,
                  height: 60,
                  margin: const EdgeInsets.symmetric(horizontal: 6, vertical: 8),
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      primary: Color.fromARGB(255, 250, 243, 243)
                    ),
                    onPressed: () {
                        Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const Login()),
                      );
                    },
                    child: Text("Login", style: TextStyle(fontSize: 25, color: Colors.black)),
                  ),
                ),
    
                // Container(
                //   width: 280,
                //   height: 70,
                //   margin: const EdgeInsets.symmetric(horizontal: 6, vertical: 8),
                //   child: ElevatedButton(
                //     style: ElevatedButton.styleFrom(
                //       primary: Color.fromARGB(255, 250, 243, 243)
                //     ),
                //     onPressed: () {
                //         Navigator.push(
                //         context,
                //         MaterialPageRoute(builder: (context) => const SignWithGoogle()),
                //       );
                //     },
                //     child: Row(
                //       children: const[
                //         Text("Sing in With ", style: TextStyle(fontSize: 28, color: Colors.black)),
                //        Text("G", style: TextStyle(fontSize: 28, color: Colors.blue)),
                //        Text("o", style: TextStyle(fontSize: 28, color: Colors.red)),
                //        Text("o", style: TextStyle(fontSize: 28, color: Colors.yellow)),
                //        Text("g", style: TextStyle(fontSize: 28, color: Colors.blue)),
                //        Text("l", style: TextStyle(fontSize: 28, color: Colors.green)),
                //        Text("e", style: TextStyle(fontSize: 28, color: Colors.red)),
                //       ],
                //     ),
                //   ),
                // ),
    
    
    
              ],
            ),
          ),
        ),
      ),
    ); 
  }

  singInWithGoogle(){

  }
}
