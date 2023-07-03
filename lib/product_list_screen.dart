import 'package:flutter/material.dart';

class ProductListScreen extends StatefulWidget {
  const ProductListScreen({Key? key}) : super(key: key);

  @override
  State<ProductListScreen> createState() => _ProductListScreenState();
}

class _ProductListScreenState extends State<ProductListScreen> {

  final List<Contact> contractList=[
    Contact(name: "Monir", email: "monir352@gmail.com", phoneNumber: 01740641349),
    Contact(name: "Shakib", email: "monir352@gmail.com", phoneNumber: 01740641334),
    Contact(name: "Jubair", email: "monir352@gmail.com", phoneNumber: 01740641360),
    Contact(name: "Mahfuz", email: "monir352@gmail.com", phoneNumber: 01740641310),
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text("Contract List"),
        ),
        body:ListView.builder(
          itemCount: contractList.length,
            itemBuilder: (BuildContext context,index){
              return ListTile(
                onTap:(){
                 showContactDetailsBottomSheet(contractList[index]);
                },
                title: Text(contractList[index].name),
              );
            }
        ) ,
      ),
    );
  }
  void showContactDetailsBottomSheet(Contact contact) {
    showModalBottomSheet(
      context: context,
      builder: (BuildContext context) {
        return GestureDetector(
          onTap: () {
            Navigator.pop(context);
          },
          child: Container(
            padding: const EdgeInsets.all(16),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'Contact Details',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 20),
                Text('Name: ${contact.name}'),
                Text('Email: ${contact.email}'),
                Text('Phone Number: ${contact.phoneNumber}'),
              ],
            ),
          ),
        );
      },
    );
  }

}


class Contact{
  final String name;
  final String email;
  final num phoneNumber;
  Contact({ required this.name, required this.email, required this.phoneNumber});

}
