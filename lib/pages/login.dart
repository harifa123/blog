import 'package:blogapp/pages/register.dart';
import 'package:flutter/material.dart';
class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String email="",password="";
  TextEditingController n1=new TextEditingController();
  TextEditingController n2=new TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Container(
        padding: EdgeInsets.all(10),
        child: Column(
          children: [
            TextField(
              controller: n1,
              decoration: InputDecoration(
                labelText: "Email Id",
                hintText: "email id",
                border: OutlineInputBorder()
              ),
            ),
            SizedBox(height: 10,),
            TextField(
              controller: n2,
              decoration: InputDecoration(
                labelText: "Password",
                hintText: "Password",
                border: OutlineInputBorder()
              ),
            ),
            SizedBox(height: 10,),
            ElevatedButton(onPressed: (){
              email=n1.text;
              password=n2.text;
              setState(() {
                print("Email:"+email);
                print("Password:"+password);
              });
            }, child: Text("LOGIN")),
            SizedBox(height: 10,),
            ElevatedButton(onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>Register()));
            }, child: Text("New user registration")),
            SizedBox(height: 10,),
          ],
        ),
      ),
    );
  }
}
