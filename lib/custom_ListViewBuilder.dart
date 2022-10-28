import 'package:act4_test/page_two.dart';
import 'package:flutter/material.dart';

import 'custom_PassArguments.dart';

class CustomListViewBuilder extends StatefulWidget {
  CustomListViewBuilder({Key? key}) : super(key: key);

  // List data = <Map<String,dynamic>>[
  //   {'name': '', 'email': '', 'phone': '', 'bday': '', 'age': '', 'section': '',
  //     'course': '', 'fb': '',}
  // ];

  @override
  State<CustomListViewBuilder> createState() => _CustomListViewBuilderState();
}

class _CustomListViewBuilderState extends State<CustomListViewBuilder> {

  @override
  Widget build(BuildContext context) {
    PassArguments args =
    ModalRoute.of(context)!.settings.arguments as PassArguments;

    // List data = <String>[
    //   args.name,
    //   args.email,
    //   args.phone,
    //   args.bday,
    //   args.age,
    //   args.section,
    //   args.course,
    //   args.fb
    // ];
    return ListView.builder(
        itemCount: 1,
        itemBuilder: (BuildContext context, int index) {
          return const ExpansionTile(
            title: Text('data[0]'),

          );
        });

        // Container(
        //   child: const ExpansionTile(
        //     title: Text('ExpansionTile 1'),
        //     subtitle: Text('Trailing expansion arrow icon'),
        //     children: <Widget>[
        //       ListTile(title: Text('This is tile number 1')),
        //     ],
        //   ),
        // );
  }
}
