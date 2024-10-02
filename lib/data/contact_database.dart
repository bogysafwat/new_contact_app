
import 'package:flutter/cupertino.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:new_contact_app/models/contact_model.dart';



class ContactDatabase extends ChangeNotifier{
  final _myBox=Hive.box<ContactModel>('contactBox');

  void addContact(ContactModel contactModel){
    _myBox.add(contactModel);
  }

  List<ContactModel>getContact(){
    return _myBox.values.toList();
  }

  void deleteContact(int index){
    _myBox.deleteAt(index);
  }

  void updateContact(int index, ContactModel contactModel){
    _myBox.putAt(index, contactModel);
  }
}