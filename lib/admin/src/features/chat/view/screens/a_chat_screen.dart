import 'package:flutter/material.dart';
import 'package:square_limo_admin_driver/admin/src/features/chat/model/chat_message_model.dart';
import 'package:square_limo_admin_driver/admin/src/features/chat/view/widgets/a_chat_Input_item_widget.dart';
import 'package:square_limo_admin_driver/admin/src/features/chat/view/widgets/chat_appbar_widget.dart';
import 'package:square_limo_admin_driver/admin/src/features/chat/view/widgets/chat_bubble_widget.dart';
import 'package:square_limo_admin_driver/common/core/enums/app_enums.dart';

class AChatScreen extends StatefulWidget {
  const AChatScreen({super.key});

  @override
  State<AChatScreen> createState() => _AChatScreenState();
}

class _AChatScreenState extends State<AChatScreen> {
  final chatController = TextEditingController();



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const ChatAppBarWidget(),
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
                itemCount: fakChatMessage.length,
                itemBuilder: (context, index) => ChatBubbleWidget(
                    chatMessageModel: fakChatMessage[index]
                )),
          ),
          const AChatInputItemWidget(),
        ],
      ),
    );
  }
}

