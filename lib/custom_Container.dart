import 'package:flutter/material.dart';

class CustomContainer extends StatelessWidget {
  CustomContainer({super.key, required this.icon, required this.name});

  Widget? icon;
  String? name;

  @override
  Widget build(BuildContext context) {
    TextEditingController textEditingController = TextEditingController();

    return Container(
      padding: const EdgeInsets.all(15),
      child: TextFormField(
        controller: textEditingController,
        decoration: InputDecoration(
          icon: icon,
          labelText: name,
        ),
        validator: (value) {
          if (value!.isEmpty) {
            return 'Enter last Name';
          }
          return null;
        },

        //onSaved: (String? value) {},
        //validator: (String? value) {
          //return (value != null && value.contains('@'))
              //? 'Do not use the @ char.'
              //: null;
        //},
      ),
    );
  }
}
