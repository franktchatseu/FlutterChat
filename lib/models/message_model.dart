import 'package:chatapp/models/user_model.dart';

class Message {
  final User sender;
  String time;
  String text;
  bool isLiked;
  bool unread;

  //constructor
  Message({this.sender, this.time, this.text, this.isLiked, this.unread});

}

//create the current user

final User currentUser = User(
  id: 0,
  name: 'Curernt User',
  imageUrl: 'assets/images/default-avatar.jpg',
);
//frank
final User frank = User(
  id: 0,
  name: 'Frank',
  imageUrl: 'assets/images/frank.jpg',
);
final User socrate = User(
  id: 0,
  name: 'Socrate',
  imageUrl: 'assets/images/socrate.jpg',
);
final User armel = User(
  id: 3,
  name: 'Armel',
  imageUrl: 'assets/images/armel.jpg',
);
final User liliane = User(
  id: 4,
  name: 'Liliane',
  imageUrl: 'assets/images/liliane.jpg',
);
final User raissa = User(
  id: 5,
  name: 'Raissa',
  imageUrl: 'assets/images/raissa.jpg',
);


// fovorites contact
List<User> favorites = [frank,socrate,armel,liliane,raissa];

//intiallisation du chat
List<Message> chats = [
  Message(
    sender:frank,
    time: '5:30 PM',
    text: 'corrige les bugs',
    isLiked: true,
    unread: true,

  ),
  Message(
    sender:liliane,
    time: '1:30 PM',
    text: 'anniversaire de sandra',
    isLiked: false,
    unread: true,

  ),
  Message(
    sender:socrate,
    time: '15:30 AM',
    text: 'Ouganda se porte bien',
    isLiked: false,
    unread: false,

  ),
  Message(
    sender:raissa,
    time: '18:30 PM',
    text: 'les enfants se porte bien',
    isLiked: true,
    unread: true,

  ),
  Message(
    sender:liliane,
    time: '1:30 PM',
    text: 'anniversaire de sandra',
    isLiked: true,
    unread: false,

  ),
  Message(
    sender:socrate,
    time: '15:30 AM',
    text: 'Ouganda se porte bien',
    isLiked: false,
    unread: true,

  ),
  Message(
    sender:raissa,
    time: '18:30 PM',
    text: 'les enfants se porte bien',
    isLiked: true,
    unread: false,

  ),

];
