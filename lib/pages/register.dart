import 'package:flutter/material.dart';
class Register extends StatefulWidget {
  const Register({super.key});

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  String name="",age="",mobile="",address="",pin="",email="",password="";
  TextEditingController n1=new TextEditingController();
  TextEditingController n2=new TextEditingController();
  TextEditingController n3=new TextEditingController();
  TextEditingController n4=new TextEditingController();
  TextEditingController n5=new TextEditingController();
  TextEditingController n6=new TextEditingController();
  TextEditingController n7=new TextEditingController();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(),
        body: Container(
          child: Column(
            children: [
              TextField(
                controller: n1,
                decoration: InputDecoration(
                  labelText: "Name",
                  hintText: "Name",
                  border: OutlineInputBorder()
                ),
              ),
              SizedBox(height: 10,),
              TextField(
                controller: n2,
                decoration: InputDecoration(
                  labelText: "Age",
                  hintText: "age",
                  border: OutlineInputBorder()
                ),
              ),
              SizedBox(height: 10,),
              TextField(
                controller: n3,
                decoration: InputDecoration(
                  labelText: "Mobile",
                  hintText: "mobile",
                  border: OutlineInputBorder()
                ),
              ),
              SizedBox(height: 10,),
              TextField(
                controller: n4,
                decoration: InputDecoration(
                  labelText: "Address",
                  hintText: "Address",
                  border: OutlineInputBorder()
                ),
              ),
              SizedBox(height: 10,),
              TextField(
                controller: n5,
                decoration: InputDecoration(
                  labelText: "pin",
                  hintText: "pin",
                  border: OutlineInputBorder()
                ),
              ),
              SizedBox(height: 10,),
              TextField(
                controller: n6,
                decoration: InputDecoration(
                    labelText: "email",
                    hintText: "email",
                    border: OutlineInputBorder()
                ),
              ),
              SizedBox(height: 10,),
              TextField(
                controller: n7,
                decoration: InputDecoration(
                    labelText: "password",
                    hintText: "password",
                    border: OutlineInputBorder()
                ),
              ),
              SizedBox(height: 10,),
              ElevatedButton(onPressed: (){
                name=n1.text;
                age=n2.text;
                mobile=n3.text;
                address=n4.text;
                pin=n5.text;
                email=n6.text;
                password=n7.text;
                setState(() {
                  print("Name:"+name);
                  print("Age:"+age);
                  print("Mobile:"+mobile);
                  print("Address:"+address);
                  print("pin:"+pin);
                  print("email:"+email);
                  print("password:"+password);
                });

              }, child: Text("REGISTER")),
              SizedBox(height: 10,),
              ElevatedButton(onPressed: (){
                Navigator.pop(context);
              }, child: Text("BACK TO LOGIN"))
            ],
          ),
        ),
      ),
    );
  }
}
