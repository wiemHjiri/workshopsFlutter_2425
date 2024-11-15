import 'package:flutter/material.dart';


class Signup extends StatefulWidget {
  const Signup({super.key});

  @override
  State<Signup> createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  late String username,password,email;
  GlobalKey<FormState> _globalKey=GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Sign Up"),
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
                  email = value!;
                },
                validator: (value){
                   RegExp regex = RegExp(
                        r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+");
                  if(value!.isEmpty  || !regex.hasMatch(value)) {
                    return "email invalide";
                  }
                },
              decoration: const InputDecoration(
                border: OutlineInputBorder(),labelText: "Email"),
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
             const Row(
              children: [
                SizedBox(width: 150,),
                Padding(
                  padding:  EdgeInsets.only(right: 10),
                  child: Text("Already have an account ?"),
                ),
                Icon(Icons.arrow_forward_ios_rounded,color: Colors.deepOrange,)
              ],
             ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: (){
                if(_globalKey.currentState!.validate()){
                  _globalKey.currentState!.save();
                  showDialog(context: context, builder: (context){
                    return AlertDialog(
                      title: const Text("Informations"),
                      content: Text("Welcome $username"),
                    
                    );
                  });
                }
              }, 
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.deepOrange,
                foregroundColor: Colors.white
              ),
              child: const Text("Sign Up")
              )
          
            ],
          ),
        ),
      ),
    );
  }
}