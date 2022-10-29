import 'package:flutter/material.dart';

class PageOne extends StatefulWidget {
  const PageOne({super.key});

  @override
  State<PageOne> createState() => _PageOneState();
}

class _PageOneState extends State<PageOne> {
  //two global list variables used to receive data from other page/route
  List receiver = [];
  List student = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Activity #4'),
      ),
      body: ListView.builder(
          itemCount: student.length,
          itemBuilder: (context, index) {
            return ExpansionTile(
              title: Text(student[index]['name']),
              leading: const Icon(Icons.account_circle),
              trailing: IconButton(
                onPressed: () {
                  setState(() {
                    student.removeAt(index);
                    receiver.removeAt(index);
                  });
                },
                icon: const Icon(Icons.delete, color: Colors.red),
              ),
              children: [
                Container(
                    padding: const EdgeInsets.symmetric(horizontal: 16.0),
                    alignment: Alignment.topLeft,
                    child: Column(
                      children: [
                        Text('Email Address: ${student[index]['email']}'),
                        Text('Phone Number: ${student[index]['phone']}'),
                        Text('Birthday: ${student[index]['bday']}'),
                        Text('Age: ${student[index]['age']}'),
                        Text('Course: ${student[index]['course']}'),
                        Text('Section: ${student[index]['section']}'),
                        Text('Facebook: ${student[index]['fb']}'),
                      ],
                    ))
              ],
            );
          }),
      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          receiver.add(await Navigator.pushNamed(context, '/second'));

          setState(() {
            //.map loop to pass the received list data to student list
            student = receiver
                .map((item) => {
                      'name': item[0]['name'],
                      'email': item[0]['email'],
                      'phone': item[0]['phone'],
                      'bday': item[0]['bday'],
                      'age': item[0]['age'],
                      'section': item[0]['section'],
                      'course': item[0]['course'],
                      'fb': item[0]['fb']
                    })
                .toList();
          });
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
