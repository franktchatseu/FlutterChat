import 'package:chatapp/models/message_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class RecentChat extends StatefulWidget {
  @override
  _RecentChatState createState() => _RecentChatState();
}

class _RecentChatState extends State<RecentChat> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        height: 320,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(30),
            topRight: Radius.circular(30)
          )
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(30),
              topRight: Radius.circular(30)
          ),
          child: ListView.builder(
            itemCount: chats.length,
            itemBuilder: (context, index) {
               Message chat = chats[index];
              return Container(
                margin:   EdgeInsets.only(top: 5, bottom: 5, right: 20),
                padding:  EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                decoration: BoxDecoration(
                  color: chat.unread ? Color(0XFFFFEFEE) : Colors.white,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        CircleAvatar(
                          backgroundImage: AssetImage(chat.sender.imageUrl),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [Text(
                              chat.sender.name,
                              style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold,color: Colors.grey),
                          ),
                            SizedBox(
                              height: 8,
                            ),
                            Container(
                              width: MediaQuery.of(context).size.width*0.45,
                              child: Text(
                                  chat.text,
                                  style: TextStyle(fontSize: 15,fontWeight: FontWeight.w600,color: Colors.blueGrey),
                              ),
                            )
                          ],
                        ),
                      ],
                    ),
                    Column(
                      children: [Text(
                          chat.time,
                          style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15,color: Colors.grey),
                      ),
                        Container(
                            width: 50,
                            padding: EdgeInsets.symmetric(horizontal: 10,vertical: 20),
                            decoration: BoxDecoration(
                              color: Colors.red,
                              borderRadius: BorderRadius.all(Radius.circular(20)),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text("New"),
                            ))
                      ],
                    )
                  ],

                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
