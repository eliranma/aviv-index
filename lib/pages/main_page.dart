
import 'package:aviv_index/pages/add_user_page.dart';
import 'package:flutter/material.dart';

class MainPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return MainPageState();
  }
}

class MainPageState extends State<MainPage> {
  @override
  build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('רשימת לקוחות'), actions: <Widget>[
        IconButton(
            icon: Icon(Icons.add),
            onPressed: () {
              Navigator.of(context).push(MaterialPageRoute(builder: (context) {
                return AddUserPage();
              }));
            })
      ]),
    );
  }
}
