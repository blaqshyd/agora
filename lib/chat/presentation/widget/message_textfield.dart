import 'package:flutter/material.dart';

class MessageTextfield extends StatelessWidget {
  const MessageTextfield({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: TextFormField(
          // maxLength: 28,
          minLines: 1,
          maxLines: 5,
          textAlignVertical: TextAlignVertical.center,
          textCapitalization: TextCapitalization.sentences,
          textInputAction: TextInputAction.send,
          decoration: InputDecoration(
              contentPadding: const EdgeInsets.symmetric(
                vertical: 8,
                horizontal: 16,
              ),
              border:
                  OutlineInputBorder(borderRadius: BorderRadius.circular(12)),
              hintText: 'Send a message'),
        ),
      ),
    );
  }
}
