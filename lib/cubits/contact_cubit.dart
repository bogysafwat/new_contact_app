import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive/hive.dart';
import 'package:new_contact_app/models/contact_model.dart';

class ContactCubit extends Cubit<List<ContactModel>>{
  final Box<ContactModel> _contactBox;

  ContactCubit(this._contactBox) : super ([]){
    loadContacts();
  }
  void loadContacts(){
    if(_contactBox.isNotEmpty){
      emit(_contactBox.values.toList());
    }
  }

  void addContact (String name,String number,String email){
    final newContact=ContactModel(name: name, number: number, email: email);
    _contactBox.add(newContact);
    emit([...state,newContact]);
  }

  void deleteContact(int index){
    _contactBox.deleteAt(index);
    emit([...state]..removeAt(index));
  }





}