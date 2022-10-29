import 'package:flutter/material.dart';

class PageTwo extends StatefulWidget {
  PageTwo({Key? key}) : super(key: key);

  @override
  State<PageTwo> createState() => _PageTwoState();
}

class _PageTwoState extends State<PageTwo> {
  final nameEditingController = TextEditingController();
  final emailEditingController = TextEditingController();
  TextEditingController phoneEditingController = TextEditingController(text: '+63');
  final birthdateEditingController = TextEditingController();
  final ageEditingController = TextEditingController();
  final sectionEditingController = TextEditingController();
  final courseEditingController = TextEditingController();
  TextEditingController fbEditingController = TextEditingController(text: 'https://www.');

  final formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Add Student'),
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(Icons.arrow_back),
        ),
      ),
      body: Form(
          key: formKey,
          child: ListView(
            children: [
              Container(
                padding: const EdgeInsets.all(12),
                child: TextFormField(
                  keyboardType: TextInputType.name,
                  controller: nameEditingController,
                  decoration: const InputDecoration(
                    icon: Icon(Icons.account_circle),
                    labelText: 'Name',
                  ),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter some text';
                    }
                    return null;
                  },
                ),
              ),
              Container(
                padding: const EdgeInsets.all(12),
                child: TextFormField(
                  keyboardType: TextInputType.emailAddress,
                  controller: emailEditingController,
                  decoration: const InputDecoration(
                    icon: Icon(Icons.email),
                    labelText: 'Email Address',
                  ),
                  onSaved: (String? value) {},
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter some text';
                    }
                    return null;
                  },
                ),
              ),
              Container(
                padding: const EdgeInsets.all(12),
                child: TextFormField(
                  keyboardType: TextInputType.phone,
                  controller: phoneEditingController,
                  decoration: const InputDecoration(
                    icon: Icon(Icons.numbers),
                    labelText: 'Phone Number',
                  ),
                  onSaved: (String? value) {},
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter some text';
                    }
                    return null;
                  },
                ),
              ),
              Container(
                padding: const EdgeInsets.all(12),
                child: TextFormField(
                  keyboardType: TextInputType.datetime,
                  controller: birthdateEditingController,
                  decoration: const InputDecoration(
                    icon: Icon(Icons.calendar_month),
                    labelText: 'Birthdate',
                  ),
                  onSaved: (String? value) {},
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter some text';
                    }
                    return null;
                  },
                ),
              ),
              Container(
                padding: const EdgeInsets.all(12),
                child: TextFormField(
                  keyboardType: TextInputType.number,
                  controller: ageEditingController,
                  decoration: const InputDecoration(
                    icon: Icon(Icons.person_outline),
                    labelText: 'Age',
                  ),
                  onSaved: (String? value) {},
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter some text';
                    }
                    return null;
                  },
                ),
              ),
              Container(
                padding: const EdgeInsets.all(12),
                child: TextFormField(
                  keyboardType: TextInputType.name,
                  controller: sectionEditingController,
                  decoration: const InputDecoration(
                    icon: Icon(Icons.corporate_fare_rounded),
                    labelText: 'Section',
                  ),
                  onSaved: (String? value) {},
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter some text';
                    }
                    return null;
                  },
                ),
              ),
              Container(
                padding: const EdgeInsets.all(12),
                child: TextFormField(
                  keyboardType: TextInputType.name,
                  controller: courseEditingController,
                  decoration: const InputDecoration(
                    icon: Icon(Icons.flag),
                    labelText: 'Course',
                  ),
                  onSaved: (String? value) {},
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter some text';
                    }
                    return null;
                  },
                ),
              ),
              Container(
                padding: const EdgeInsets.all(12),
                child: TextFormField(
                  keyboardType: TextInputType.name,
                  controller: fbEditingController,
                  decoration: const InputDecoration(
                    icon: Icon(Icons.facebook),
                    labelText: 'Facebook',
                  ),
                  onSaved: (String? value) {},
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter some text';
                    }
                    return null;
                  },
                ),
              ),
              Center(
                child: ElevatedButton(
                    style: const ButtonStyle(
                      backgroundColor: MaterialStatePropertyAll(Colors.blue),
                      foregroundColor: MaterialStatePropertyAll(Colors.white),
                    ),
                    onPressed: () {
                      if (formKey.currentState!.validate()) {

                        List data = <Map<String, dynamic>>[
                          {
                            'name': nameEditingController.text,
                            'email': emailEditingController.text,
                            'phone': phoneEditingController.text,
                            'bday': birthdateEditingController.text,
                            'age': ageEditingController.text,
                            'section': sectionEditingController.text,
                            'course':  courseEditingController.text,
                            'fb': fbEditingController.text,
                          }
                        ];

                        Navigator.pop(context, data);
                      }
                    },
                    child: const Text('Submit')),
              ),
            ],
          )),
    );
  }
}
