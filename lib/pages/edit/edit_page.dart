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
  final _formKey = GlobalKey<FormState>();

  final nameController = TextEditingController();
  final ageController = TextEditingController();
  final salaryController = TextEditingController();

  final _editMember = EditMemberViewModel();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    nameController.text = widget.member.name ?? '';
    ageController.text = widget.member.yob.toString();
    salaryController.text = widget.member.salary.toString();
  }

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
      appBar: AppBar(),
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
                    label: Text('name'),
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
                    label: Text('age'),
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
                    label: Text('salary'),
                  ),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
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
                    icon: Icon(Icons.edit),
                    label: 'Edit',
                    onPressed: () async {
                      if (_formKey.currentState!.validate()) {
                        await _editMember.editMember(Member(
                            id: widget.member.id,
                            name: nameController.text,
                            yob: int.parse(ageController.text),
                            salary: double.parse(salaryController.text)));
                        Navigator.pop(context);
                      }
                    },
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  CustomButton(
                    icon: Icon(Icons.delete),
                    label: 'Del',
                    onPressed: () async {
                      await showDialog(
                        context: context,
                        builder: (_) => AlertDialog(
                            title: Text('Warning!'),
                            content: Text(
                                'This item will be pernament delete. Continue?'),
                            actions: [
                              CustomButton(
                                  onPressed: () async {
                                    Navigator.pop(context);
                                  },
                                  icon: Icon(Icons.cancel),
                                  label: 'Cancel'),
                              CustomButton(
                                  onPressed: () async {
                                    await _editMember
                                        .deleteMember(widget.member);
                                    Navigator.pop(context);
                                    Navigator.pop(context);
                                  },
                                  icon: Icon(Icons.delete),
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
