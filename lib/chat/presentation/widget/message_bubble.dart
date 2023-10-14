import 'package:flutter/material.dart';

class MessageBubble extends StatelessWidget {
  const MessageBubble({
    Key? key,
    this.profileImageUrl,
    required this.message,
    required this.timestamp,
  }) : super(key: key);

  final String? profileImageUrl;
  final String message;
  final String timestamp;

  @override
  Widget build(BuildContext context) {
    final isReceiver = profileImageUrl != null;
    return Row(
      mainAxisAlignment:
          isReceiver ? MainAxisAlignment.start : MainAxisAlignment.end,
      children: [
        if (isReceiver)
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: CircleAvatar(),
          ),
        Flexible(
          child: Column(
            crossAxisAlignment:
                isReceiver ? CrossAxisAlignment.start : CrossAxisAlignment.end,
            children: [
              Container(
                padding: const EdgeInsets.all(12),
                constraints: const BoxConstraints(maxWidth: 275),
                decoration: BoxDecoration(
                    color: isReceiver ? Colors.green : Colors.grey,
                    borderRadius: BorderRadius.circular(10)),
                child: Text(
                  message,
                  style: const TextStyle(
                    color: Colors.white,
                  ),
                ),
              ),
              const SizedBox(height: 8),
              Text(timestamp),
            ],
          ),
        ),
        if (!isReceiver) const SizedBox(width: 8)
        // const Padding(
        //   padding: EdgeInsets.all(8.0),
        //   child: CircleAvatar(),
        // ),
      ],
    );
  }
}
