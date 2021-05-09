import 'package:aviv_index/modules/http.dart';
import 'package:flutter/material.dart';

class AddUserPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return AddUserPageState();
  }
}

class AddUserPageState extends State<AddUserPage> {
  TextEditingController nameController = TextEditingController();
  TextEditingController avivIdController = TextEditingController();
  String response = '';
  createUser() async {
    var result = await http_post('create-user', {
      'name':nameController.text,
      'avivId':avivIdController.text,
    });
    if(result.ok)
      {
        setState(() {
          response = result.data['status'];
        });
      }
  }
  @override
  build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('הוספת לקוח'),
        ),
        body: Column(
          children: <Widget>[
            TextField(
              controller: nameController,
              decoration: InputDecoration(hintText: 'שם הלקוח'),
            ),
            TextField(
              controller: avivIdController,
              decoration: InputDecoration(hintText: 'מספר לקוח'),
            ),
            ElevatedButton(
              child: Text('הוסף לקוח חדש'),
              onPressed: createUser,
            ),
            Text(response),
          ],
        ));
  }
}
