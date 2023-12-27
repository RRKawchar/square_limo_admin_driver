import 'package:square_limo_admin_driver/common/core/enums/app_enums.dart';

class ChatMessageModel{


final String text;
final ChatType chatType;
final ChatMessageType chatMessageType;
final MessageStatus messageStatus;
final bool isSender;

ChatMessageModel({
this.text='',
  required this.chatType,
  required this.chatMessageType,
  required this.messageStatus,
  required this.isSender
});

}


List fakChatMessage=[

ChatMessageModel(
    text: "Hello!",
    chatType: ChatType.receive,
    chatMessageType: ChatMessageType.text,
    messageStatus: MessageStatus.viewed,
    isSender: false,

),
  ChatMessageModel(
    text: "Hello sir. welcome to Square limo car booking service!.",
    chatType: ChatType.send,
    chatMessageType: ChatMessageType.text,
    messageStatus: MessageStatus.viewed,
    isSender: false,

  ),

  ChatMessageModel(
    text: "How are you?",
    chatType: ChatType.receive,
    chatMessageType: ChatMessageType.text,
    messageStatus: MessageStatus.viewed,
    isSender: true,

  ),
  ChatMessageModel(
    text: "https://imgd.aeplcdn.com/370x208/n/cw/ec/141867/nexon-exterior-right-front-three-quarter-71.jpeg?isig=0&q=80",
    chatType: ChatType.receive,
    chatMessageType: ChatMessageType.image,
    messageStatus: MessageStatus.viewed,
    isSender: false,

  ),
  ChatMessageModel(
    text: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQBkQlZmRefy03Z2G1QLw0gd5ZErEab9DLj3uwLX813BQ&s",
    chatType: ChatType.send,
    chatMessageType: ChatMessageType.image,
    messageStatus: MessageStatus.viewed,
    isSender: true,

  ),

  ChatMessageModel(
    text: "Error Happen",
    chatType: ChatType.send,
    chatMessageType: ChatMessageType.text,
    messageStatus: MessageStatus.notSend,
    isSender: true,

  ),
  ChatMessageModel(
    text: "This look great it!",
    chatType: ChatType.receive,
    chatMessageType: ChatMessageType.text,
    messageStatus: MessageStatus.viewed,
    isSender: false,

  ),
  ChatMessageModel(
    text: "Glad You",
    chatType: ChatType.send,
    chatMessageType: ChatMessageType.text,
    messageStatus: MessageStatus.notView,
    isSender: true,

  ),

];