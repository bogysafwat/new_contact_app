import 'package:flutter/material.dart';

class ContactTile extends StatelessWidget {
  final name ;
  final phone ;
  final email ;
  final VoidCallback onTap;
  const ContactTile({super.key, this.name, this.phone, this.email, required this.onTap});


  String Iconchar(){
    return name[0];
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(18),
              boxShadow:[BoxShadow(
                  color: Colors.grey.withOpacity(0.5),
                  spreadRadius: 1,
                  blurRadius: 5,
                  offset: Offset(0, 3)
              )
              ] ),
          child: Padding(padding: const EdgeInsets.all(10.0),
            child: Row(

              children: [
                MaterialButton(
                  onPressed: () {},
                  color: Colors.blue,
                  textColor: Colors.white,
                  child: Text('${Iconchar()}'),

                  shape: CircleBorder(),
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(name,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18),),
                    Text(phone,style: TextStyle(fontSize: 16,color: Colors.grey.shade600),)
                  ],

                )
              ],

            ),
          ),
        ),
      ),
    );;
  }
}
