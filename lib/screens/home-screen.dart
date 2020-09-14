import 'package:chatapp/screens/category-selector.dart';
import 'package:chatapp/screens/favorite-contact.dart';
import 'package:chatapp/screens/recent-chat.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.menu),
          iconSize: 30,
          color: Colors.white,
          onPressed: () {},
        ),
        title: Center(
            child: Text(
          'Chats',
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 26),
        )),
        actions: [
          IconButton(
            icon: Icon(Icons.search),
            iconSize: 30,
            color: Colors.white,
            onPressed: () {},
          )
        ],
      ),
      body: Column(
        children: [
          CategorySelector(),
          Expanded(
            child: Container(
              height: 500,
              decoration: BoxDecoration(
                color: Theme.of(context).accentColor,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30),
                  topRight: Radius.circular(30),
                )
              ),
              child: Column(
                children: [
                  FavotiteContact(),
                  RecentChat(),
                ],
              )

            ),
          ),
        ],
      ),
    );
  }
}
