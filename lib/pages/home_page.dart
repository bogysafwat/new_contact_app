import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:new_contact_app/components/contact_tile.dart';
import 'package:new_contact_app/cubits/contact_cubit.dart';
import 'package:new_contact_app/models/contact_model.dart';
import 'package:new_contact_app/pages/add_contact.dart';
import 'package:new_contact_app/pages/contact_detils.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});
  


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF3D8BF2),
        title: Text('Contacts',style: TextStyle(fontWeight: FontWeight.bold),) ,
        centerTitle: true,
        actions: [
          Icon(Icons.search,color: Colors.white,)
        ],
      ),
      floatingActionButton:
      FloatingActionButton(
        onPressed: (){
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) =>  AddContact()),
          );
        },
        backgroundColor:Color(0xFFF20574),
        child: Icon(Icons.add,color: Colors.white,),),
      body: BlocBuilder<ContactCubit,List<ContactModel>>(builder: (context,contactList){
        return ListView.builder(
            itemCount:contactList.length,
            itemBuilder: (context,index) {
              return Dismissible(
                key: Key(contactList[index].name,),
                direction: DismissDirection.endToStart,
                onDismissed: (direction){
                  context.read<ContactCubit>().deleteContact(index);
                },
                child: ContactTile(
                  onTap: (){
                    Navigator.push(context,  MaterialPageRoute(builder: (context) =>ContactDetils(name: contactList[index].name,phone: contactList[index].number,email: contactList[index].email,)));
                  },
                  name: contactList[index].name,
                  phone: contactList[index].number,
                  email: contactList[index].email,
                ),
              );
            });
      },)
             );
  }
}
