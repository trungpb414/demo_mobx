import 'package:demo_mobx/data/model/member.dart';
import 'package:demo_mobx/pages/edit/edit_viewmodel.dart';
import 'package:flutter/material.dart';

class EditPage extends StatefulWidget {
  const EditPage({Key? key, required this.member}) : super(key: key);

  final Member member;

  @override
  State<EditPage> createState() => _EditPageState();
}

class _EditPageState extends State<EditPage> {
  final _editMember = EditMemberViewModel();

  @override
  void initState() {
    super.initState();
    _editMember.initController(widget.member);
  }

  @override
  void dispose() {
    super.dispose();
    _editMember.disposeController();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Form(
          key: _editMember.formKey,
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextFormField(
                  controller: _editMember.nameController,
                  decoration: const InputDecoration(
                    label: Text('name'),
                  ),
                  validator: (value) {
                    if (value?.isEmpty ?? true) {
                      return 'Cannot be left blank';
                    }
                    return null;
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextFormField(
                  controller: _editMember.ageController,
                  keyboardType: TextInputType.number,
                  decoration: const InputDecoration(
                    label: Text('age'),
                  ),
                  validator: (value) {
                    if (value?.isEmpty ?? true) {
                      return 'Cannot be left blank';
                    }
                    return null;
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextFormField(
                  controller: _editMember.salaryController,
                  keyboardType: TextInputType.number,
                  decoration: const InputDecoration(
                    label: Text('salary'),
                  ),
                  validator: (value) {
                    if (value?.isEmpty ?? true) {
                      return 'Cannot be left blank';
                    }
                    return null;
                  },
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CustomButton(
                    icon: const Icon(Icons.edit),
                    label: 'Edit',
                    onPressed: () async {
                      await _editMember.editMember(widget.member.id);
                      Navigator.pop(context);
                    },
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  CustomButton(
                    icon: const Icon(Icons.delete),
                    label: 'Del',
                    onPressed: () async {
                      await showDialog(
                        context: context,
                        builder: (_) => AlertDialog(
                            title: const Text('Warning!'),
                            content: const Text(
                                'This item will be pernament delete. Continue?'),
                            actions: [
                              CustomButton(
                                  onPressed: () async {
                                    Navigator.pop(context);
                                  },
                                  icon: const Icon(Icons.cancel),
                                  label: 'Cancel'),
                              CustomButton(
                                  onPressed: () async {
                                    await _editMember
                                        .deleteMember(widget.member);
                                    Navigator.pop(context);
                                    Navigator.pop(context);
                                  },
                                  icon: const Icon(Icons.delete),
                                  label: 'Delele'),
                            ]),
                      );
                    },
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}

class CustomButton extends StatelessWidget {
  const CustomButton({
    Key? key,
    required this.icon,
    required this.label,
    this.onPressed,
  }) : super(key: key);

  final Icon icon;
  final String label;
  final Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton.icon(
        onPressed: onPressed, icon: icon, label: Text(label));
  }
}
