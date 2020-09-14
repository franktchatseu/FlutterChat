import 'package:chatapp/models/message_model.dart';
import 'package:chatapp/models/user_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class ChatScreen extends StatefulWidget {
  User user;
  ChatScreen({this.user});
  @override
  _ChatScreenState createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {

  String currentMessage = "";

  _builMessage(Message message, bool isMe) {
    return Row(
      children: [
        Container(
            margin: isMe
                ? EdgeInsets.only(top: 8, bottom: 8, left: 80)
                : EdgeInsets.only(top: 8, bottom: 8, right: 50),
            width: MediaQuery.of(context).size.width * 0.75,
            padding: EdgeInsets.symmetric(vertical: 25, horizontal: 25),
            decoration: BoxDecoration(
                color: isMe ? Theme.of(context).accentColor : Color(0XFFFFEFEE),
                borderRadius: isMe
                    ? BorderRadius.only(
                        topLeft: Radius.circular(15),
                        bottomLeft: Radius.circular(15))
                    : BorderRadius.only(
                        topRight: Radius.circular(15),
                        bottomRight: Radius.circular(15))),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  message.time,
                  style: TextStyle(
                      color: Colors.blueGrey,
                      fontWeight: FontWeight.w600,
                      fontSize: 16),
                ),
                SizedBox(
                  height: 8,
                ),
                Text(
                  message.text,
                  style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                      color: Colors.blueGrey),
                ),
              ],
            )),
        !isMe ?IconButton(
          icon: message.isLiked ? Icon(Icons.favorite) : Icon(Icons.favorite_border),
          color: message.isLiked ? Theme.of(context).primaryColor : Colors.blueGrey,
          onPressed: (){

          },
        )
            :SizedBox.shrink(),
      ],
    );
  }
  _writeMessage(){
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
      ),
      child: Row(
        children: [
          IconButton(
            iconSize: 25,
            icon: Icon(Icons.photo),
            color: Theme.of(context).primaryColor,
            onPressed: (){

            },
          ),
          Expanded(
            child: TextField(
              decoration: InputDecoration.collapsed(
                hintText: "enter your message",
              ),
              onChanged: (value){
                  this.currentMessage = value;
              },
            ),
          ),
          IconButton(
            iconSize: 25,
            icon: Icon(Icons.send),
            color: Theme.of(context).primaryColor,
            onPressed: (){
                print(currentMessage);
            },
          )
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Theme.of(context).primaryColor,
        appBar: AppBar(
          title: Center(
            child: Text(
              widget.user.name,
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 26),
            ),
          ),
          elevation: 0,
          actions: [
            IconButton(
              icon: Icon(Icons.more_horiz),
              iconSize: 30,
              color: Colors.white,
              onPressed: () {},
            )
          ],
        ),
        body: GestureDetector(
          onTap: (){
            FocusScope.of(context).unfocus();
          },
          child: Column(
            children: [
              Expanded(
                child: Container(
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(30),
                        topRight: Radius.circular(30),
                      )),
                  child: ClipRRect(

                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(30),
                      topRight: Radius.circular(30),
                    ),
                    child: ListView.builder(
                      reverse: true,
                      padding: EdgeInsets.only(top: 15),
                      itemCount: chats.length,
                      itemBuilder: (context, index) {
                        Message message = chats[index];
                        bool isMe = message.sender.id == currentUser.id;
                        return _builMessage(message, isMe);
                      },
                    ),
                  ),
                ),
              ),
              _writeMessage(),
            ],
          ),
        ));
  }
}
