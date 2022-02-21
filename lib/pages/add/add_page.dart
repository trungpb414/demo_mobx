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
  final _addMember = AddMemberViewModel();

  @override
  void dispose() {
    _addMember.disposeController();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Add member'),
      ),
      body: Center(
        child: Form(
          key: _addMember.formKey,
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextFormField(
                  controller: _addMember.nameController,
                  decoration: const InputDecoration(
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
                  controller: _addMember.ageController,
                  keyboardType: TextInputType.number,
                  decoration: const InputDecoration(
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
                  controller: _addMember.salaryController,
                  keyboardType: TextInputType.number,
                  decoration: const InputDecoration(
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
                    if (_addMember.formKey.currentState!.validate()) {
                      await _addMember.addMember();
                      Navigator.pop(context);
                    }
                  },
                  icon: const Icon(Icons.add),
                  label: const Text('Add'))
            ],
          ),
        ),
      ),
    );
  }
}
