import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:new_contact_app/cubits/contact_cubit.dart';
import 'package:new_contact_app/models/contact_model.dart';
import 'package:new_contact_app/pages/home_page.dart';


void main() async {
  await Hive.initFlutter();
  Hive.registerAdapter(ContactModelAdapter());
  final myBox = await Hive.openBox<ContactModel>('contactBox');
  runApp( BlocProvider(
    create: (context) => ContactCubit(myBox), // Providing the Cubit
    child: MyApp(contactBox: myBox),          // Passing the Hive box to MyApp
  ));
}

class MyApp extends StatelessWidget {
  final Box<ContactModel> contactBox;
  const MyApp({super.key, required this.contactBox});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}
