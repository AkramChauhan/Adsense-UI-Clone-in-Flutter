import 'package:flutter/material.dart';

class MyNavigationDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: EdgeInsets.all(0),
      children: <Widget>[
        UserAccountsDrawerHeader(
          accountEmail: Text("akram.aic193@gmail.com"),
          accountName: Text("Akram Chauhan"),
          currentAccountPicture: Image.asset('assets/images/avatar.png'),
        ),
        ListTile(
          leading: Icon(Icons.home),
          title: Text("Overview"),
          selected: true,
          onTap: (){},
        ),
        ListTile(
          leading: Icon(Icons.view_module),
          title: Text("Products"),
          onTap: (){},
        ),
        ListTile(
          leading: Icon(Icons.label),
          title: Text("Custom channels"),
          onTap: (){},
        ),
        ListTile(
          leading: Icon(Icons.turned_in),
          title: Text("URL channels"),
          onTap: (){},
        ),
        ListTile(
          leading: Icon(Icons.view_quilt),
          title: Text("Sites"),
          onTap: (){},
        ),
        ListTile(
          leading: Icon(Icons.public),
          title: Text("Countries"),
          onTap: (){},
        ),
        ListTile(
          leading: Icon(Icons.phonelink),
          title: Text("Platforms"),
          onTap: (){},
        ),
        ListTile(
          leading: Icon(Icons.picture_in_picture),
          title: Text("Ad units"),
          onTap: (){},
        ),
        ListTile(
          leading: Icon(Icons.photo_size_select_small),
          title: Text("Ad sizes"),
          onTap: (){},
        ),
        ListTile(
          leading: Icon(Icons.color_lens),
          title: Text("Ad types"),
          onTap: (){},
        ),
        ListTile(
          leading: Icon(Icons.domain),
          title: Text("Ad networks"),
          onTap: (){},
        ),
        ListTile(
          leading: Icon(Icons.group),
          title: Text("Targeting types"),
          onTap: (){},
        ),
        ListTile(
          leading: Icon(Icons.gavel),
          title: Text("Bid types"),
          onTap: (){},
        ),
        Divider(
          height: 10.0,
        ),
        ListTile(
          leading: Icon(Icons.credit_card),
          title: Text("Payments"),
          onTap: (){},
        ),
        ListTile(
          leading: Icon(Icons.settings),
          title: Text("Settings"),
          onTap: (){},
        ),
        ListTile(
          leading: Icon(Icons.help),
          title: Text("Help & feedback"),
          onTap: (){},
        ),

      ],
    );
  }
}