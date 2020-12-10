import 'package:flutter/material.dart';

class Mydrawer extends StatefulWidget {
  @override
  _MydrawerState createState() => _MydrawerState();
}

class _MydrawerState extends State<Mydrawer> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        mainAxisSize: MainAxisSize.max,
        children: [
          UserAccountsDrawerHeader(
            accountName: Text(
              'Wahid Ali',
              style: TextStyle(
                color: Colors.black,
              ),
            ),
            accountEmail: Text(
              'wahidmalik551@gmail.com',
              style:
                  TextStyle(color: Colors.black, fontWeight: FontWeight.w900),
            ),
            currentAccountPicture: CircleAvatar(
              child: Text('W'),
              backgroundColor: Colors.white,
            ),
            onDetailsPressed: () {},
            decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomRight,
                  colors: [
                    Colors.cyanAccent,
                    Colors.cyanAccent[700],
                    Colors.cyanAccent[400],
                  ]),
            ),
          ),
          ListTile(
            onTap: () {},
            leading: Icon(Icons.login),
            title: Text('Login'),
            //selected: true,
          ),
          ListTile(
            onTap: () {},
            leading: Icon(Icons.app_registration),
            title: Text('Registration'),
            selected: true,
          ),
          ListTile(
            onTap: () {},
            leading: Icon(Icons.contact_page),
            title: Text('Contacts'),
            //selected: true,
          ),
          ListTile(
            onTap: () {},
            leading: Icon(Icons.details),
            title: Text('Details'),
            selected: true,
            //hoverColor: Colors.cyanAccent,
            //focusColor: Colors.cyanAccent,
          ),
          Divider(),
          Expanded(
            child: Align(
              alignment: Alignment.bottomCenter,
              child: ListTile(
                onTap: () {},
                leading: Icon(Icons.bug_report),
                title: Text('Bug'),
                selected: true,
              ),
            ),
          )
        ],
      ),
    );
  }
}
