import 'package:chatapp/models/message_model.dart';
import 'package:flutter/material.dart';

class FavotiteContact extends StatefulWidget {
  @override
  _FavotiteContactState createState() => _FavotiteContactState();
}

class _FavotiteContactState extends State<FavotiteContact> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 18,horizontal: 20),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "favorites contacts",
                  style: TextStyle(
                      fontSize: 19,
                      fontWeight: FontWeight.bold,
                      color: Colors.blueGrey),
                ),
                IconButton(
                  icon: Icon(Icons.more_horiz),
                  color: Colors.blueGrey,
                  onPressed: () {},
                )
              ],
            ),
          ),
          Container(
            height: 100,
           child: ListView.builder(
             padding: EdgeInsets.only(left: 18),
             scrollDirection: Axis.horizontal,
             itemCount: favorites.length,
             itemBuilder: (context, index) {
             return Padding(
               padding: const EdgeInsets.all(15.0),
               child: Column(
                 children: [
                   CircleAvatar(
                     backgroundImage: AssetImage(favorites[index].imageUrl),
                   ),
                   Text(
                       favorites[index].name,
                       style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18,color: Colors.blueGrey),
                   ),
                 ],
               ),
             );
           },)
          )
        ],
      ),
    );
  }
}
