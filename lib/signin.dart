import 'package:box_office_sim2/signup.dart';
import 'package:flutter/material.dart';


class Signin extends StatefulWidget {
  const Signin({super.key});

  @override
  State<Signin> createState() => _SigninState();
}

class _SigninState extends State<Signin> {
  late String username,password;
  GlobalKey<FormState> _globalKey=GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Sign In"),
      ),
      body: Form(
        key: _globalKey,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Center(child: Image.asset("assets/logo1.png",width: 200,height: 200,)),
             const SizedBox(height: 20),
             TextFormField(
                onSaved: (value){
                  username = value!;
                },
                validator: (value){
                  if(value!.isEmpty) {
                    return "username invalide";
                  }
                },
  
              decoration: const InputDecoration(
                border: OutlineInputBorder(),labelText: "Username"),
             ),
             const SizedBox(height: 20),
             TextFormField(
                onSaved: (value){
                  password = value!;
                },
                validator: (value){
                 
                if (value!.isEmpty) {
                  return "password invalide";
                }
                },
              decoration: const InputDecoration(
                border: OutlineInputBorder(),labelText: "Password"),
             ),
             const SizedBox(height: 20),
            Row(
              children: [
                const SizedBox(width: 150,),
                GestureDetector(
                  onTap: (){
                  //  Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => const Signup()));
                 Navigator.pushReplacementNamed(context, "/signup");
                  },
                  child: const Padding(
                    padding:  EdgeInsets.only(right: 10),
                    child: Text("Already have an account ?"),
                  ),
                ),
                Icon(Icons.arrow_forward_ios_rounded,color: Colors.deepOrange,)
              ],
             ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: (){
                if(_globalKey.currentState!.validate()){
                  _globalKey.currentState!.save();
                  Navigator.pushReplacementNamed(context, "/home");
                }
              }, 
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.deepOrange,
                foregroundColor: Colors.white
              ),
              child: const Text("S'authentifier")
              )
          
            ],
          ),
        ),
      ),
    );
  }
}