import 'package:flutter/material.dart';

class ContactDetils extends StatelessWidget {
  final name;
  final phone;
  final email;

  const ContactDetils({super.key, this.name, this.phone, this.email});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //  resizeToAvoidBottomInset: false,
        appBar: AppBar(
          backgroundColor: Color(0xFF3D8BF2),
          title: Text('Add/Edit Contact',) ,
          centerTitle: true,
        ),
        body:  Padding(
        padding: const EdgeInsets.all(16.0),
    child: Column(
    children: [
    TextField(
    enabled: false,
    decoration: InputDecoration(
    labelText: '${name}',
    border: OutlineInputBorder(
    borderRadius: BorderRadius.circular(10),
    borderSide: BorderSide(color: Colors.black),),
    ),
    ) ,
    SizedBox(height: 16,),

    TextField(
    enabled: false,
    decoration: InputDecoration(
    labelText: '${phone}',
    border: OutlineInputBorder(
    borderRadius: BorderRadius.circular(10),
    borderSide: BorderSide(color: Colors.black),),
    ),
    ) ,
    SizedBox(height: 16,),
    TextField(
    enabled: false,
    decoration: InputDecoration(
    labelText: '${email}',
    border: OutlineInputBorder(
    borderRadius: BorderRadius.circular(10),
    borderSide: BorderSide(color: Colors.black),),
    ),
    ) ,
   ] ),
    ));
  }
}
