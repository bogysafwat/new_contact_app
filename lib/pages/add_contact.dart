import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:new_contact_app/cubits/contact_cubit.dart';

class AddContact extends StatelessWidget {
  final nameCont =TextEditingController() ;
  final phoneCont =TextEditingController();
  final emailCont =TextEditingController();


  void onSaveContact(BuildContext context ){
    context.read<ContactCubit>().addContact(nameCont.text,phoneCont.text,emailCont.text);
    }

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
              controller:nameCont ,
              decoration: InputDecoration(
                labelText: 'Name',

                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide(color: Colors.black),),
              ),
            ) ,
            SizedBox(height: 16,),

            TextField(
              controller: phoneCont,
              decoration: InputDecoration(
                labelText: 'Phone Number',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide(color: Colors.black),),
              ),
            ) ,
            SizedBox(height: 16,),
            TextField(
              controller: emailCont,
              decoration: InputDecoration(
                labelText: 'Email',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide(color: Colors.black),),
              ),
            ) ,


            ElevatedButton(

                style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(7)
                    ),
                    backgroundColor:Color(0xFF3D8BF2)),
                onPressed:(){
                  onSaveContact(context);
                } ,
                child:Text(
                  'Save Contact',
                  style: TextStyle(
                      color: Colors.white
                  )
                  ,)
            ),

          ],
        ),
      )
    );
  }
}
