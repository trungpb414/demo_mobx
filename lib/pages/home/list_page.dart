import 'package:demo_mobx/pages/add/add_page.dart';
import 'package:demo_mobx/pages/edit/edit_page.dart';
import 'package:demo_mobx/pages/home/list_member.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

class ListPage extends StatefulWidget {
  const ListPage({Key? key}) : super(key: key);

  @override
  State<ListPage> createState() => _ListPageState();
}

class _ListPageState extends State<ListPage> {
  final members = ListMemberStore();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    members.getAllEmployee();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Demo mobx'),
        actions: [
          IconButton(
              onPressed: () async {
                await Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const AddMember(),
                    ));
                await members.getAllEmployee();
              },
              icon: const Icon(Icons.add))
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Observer(
              builder: (BuildContext context) => ListView.separated(
                  padding: EdgeInsets.zero,
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  itemBuilder: (context, index) {
                    return Card(
                      margin: const EdgeInsets.symmetric(horizontal: 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                                mainAxisSize: MainAxisSize.min,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text('Ten: ${members.members[index].name}'),
                                  Text(
                                      'Tuoi: ${members.getAge(members.members[index].yob ?? 0)}'),
                                  Text(
                                      'Luong: ${members.members[index].salary}'),
                                ]),
                          ),
                          IconButton(
                              onPressed: () async {
                                await Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => EditPage(
                                          member: members.members[index]),
                                    ));
                                await members.getAllEmployee();
                              },
                              icon: const Icon(Icons.edit)),
                        ],
                      ),
                    );
                  },
                  separatorBuilder: (context, index) {
                    return const Divider();
                  },
                  itemCount: members.members.length),
            ),
            const Divider(),
            SizedBox(
              width: double.infinity,
              child: Card(
                margin: const EdgeInsets.symmetric(horizontal: 10),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Observer(
                        builder: (context) =>
                            Text('Tong luong: ${members.totalSalaryCount}'),
                      ),
                      Observer(
                        builder: (context) => Text(
                            'Nguoi cao tuoi nhat: ${members.oldestMember}'),
                      )
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
