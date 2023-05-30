import 'package:flutter/material.dart';
import 'package:nav_drawer/home.dart';

void main() {
  runApp(MaterialApp(
    home: Myapp(),
  ));
}

class Myapp extends StatelessWidget {
  const Myapp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
          onTap: (value) {
            if (value == 0) {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const Homepage()),
              );
            } else if (value == 1) {}
          },
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: "home"),
            BottomNavigationBarItem(
                icon: Icon(Icons.account_box), label: "account")
          ]),
      appBar: AppBar(
        title: Text("Hello Navigation Drawer"),
      ),
      drawer: Drawer(
          child: ListView(
        children: [
          DrawerHeader(
              decoration: BoxDecoration(color: Colors.blue),
              child: Text("Drawer")),
          ListTile(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const Homepage()),
              );
            },
            leading: Icon(Icons.home),
            title: Text("home"),
          ),
          ListTile(
            leading: Icon(Icons.exit_to_app),
            title: Text("Exit"),
          )
        ],
      )),
    );
  }
}
