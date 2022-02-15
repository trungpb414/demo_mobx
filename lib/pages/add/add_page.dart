import 'package:demo_mobx/data/model/member.dart';
import 'package:demo_mobx/pages/add/add_viewmodel.dart';
import 'package:demo_mobx/pages/home/list_member.dart';
import 'package:flutter/material.dart';

class AddMember extends StatefulWidget {
  const AddMember({Key? key}) : super(key: key);

  @override
  State<AddMember> createState() => _AddMemberState();
}

class _AddMemberState extends State<AddMember> {
  final _formKey = GlobalKey<FormState>();

  final nameController = TextEditingController();
  final ageController = TextEditingController();
  final salaryController = TextEditingController();

  final addMember = AddMemberViewModel();

  @override
  void dispose() {
    nameController.dispose();
    ageController.dispose();
    salaryController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Add member'),
      ),
      body: Center(
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.all(8.0),
                child: TextFormField(
                  controller: nameController,
                  decoration: InputDecoration(
                    label: Text('ten'),
                  ),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Cannot be left blank';
                    }
                    return null;
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextFormField(
                  controller: ageController,
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                    label: Text('nam sinh'),
                  ),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Cannot be left blank';
                    }
                    return null;
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextFormField(
                  controller: salaryController,
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                    label: Text('luong'),
                  ),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Cannot be left blank';
                    }
                    return null;
                  },
                ),
              ),
              ElevatedButton.icon(
                  onPressed: () async {
                    if (_formKey.currentState!.validate()) {
                      await addMember.addMember(Member(
                          name: nameController.text,
                          yob: int.parse(ageController.text),
                          salary: double.parse(salaryController.text)));
                      Navigator.pop(context);
                    }
                  },
                  icon: Icon(Icons.add),
                  label: Text('Add'))
            ],
          ),
        ),
      ),
    );
  }
}
