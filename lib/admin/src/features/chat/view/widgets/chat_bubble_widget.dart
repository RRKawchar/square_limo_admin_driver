import 'package:flutter/material.dart';
import 'package:square_limo_admin_driver/admin/src/features/chat/model/chat_message_model.dart';
import 'package:square_limo_admin_driver/common/core/enums/app_enums.dart';
import 'package:square_limo_admin_driver/common/core/extensions/build_context_extensions.dart';
import 'package:square_limo_admin_driver/common/core/utils/app_colors.dart';
import 'package:square_limo_admin_driver/common/core/widgets/custom_network_image.dart';

class ChatBubbleWidget extends StatelessWidget {
  final ChatMessageModel chatMessageModel;
  const ChatBubbleWidget({super.key, required this.chatMessageModel});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 15),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.end,
        mainAxisAlignment: chatMessageModel.chatType == ChatType.receive
            ? MainAxisAlignment.start
            : MainAxisAlignment.end,
        children: [
          Align(
            alignment: chatMessageModel.chatType == ChatType.receive
                ? Alignment.centerRight
                : Alignment.centerLeft,
            child: Container(
              constraints: BoxConstraints(
                maxWidth: context.screenWidth * 0.7,
                minWidth: context.screenWidth * 0.3,
                minHeight: 40,
              ),
              padding: const EdgeInsets.symmetric(
                horizontal: 16,
                vertical: 8,
              ),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                    topLeft: const Radius.circular(10),
                    topRight: const Radius.circular(10),
                    bottomLeft: chatMessageModel.chatType == ChatType.receive
                        ? const Radius.circular(0)
                        : const Radius.circular(10),
                    bottomRight: chatMessageModel.chatType == ChatType.receive
                        ? const Radius.circular(10)
                        : const Radius.circular(0)),
                color: kDarkBlueGrey,
              ),
              child:chatMessageModel.chatMessageType==ChatMessageType.text? Text(
                chatMessageModel.text,
                style: context.appTextTheme.titleSmall,
              ):CustomNetworkImage(
                  image: chatMessageModel.text,
                borderRadius: BorderRadius.circular(0),
                height: 100,
                width: 100,
                fit: BoxFit.cover,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
