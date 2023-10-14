import 'package:agora/chat/presentation/video_call.dart';
import 'package:agora/chat/presentation/widget/message_bubble.dart';
import 'package:agora/chat/presentation/widget/message_textfield.dart';
import 'package:flutter/material.dart';

class Chat extends StatelessWidget {
  const Chat({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Chat'),
        actions: [
          IconButton(
            onPressed: () => Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const VideoCall(),
              ),
            ),
            icon: const Icon(Icons.video_camera_front),
          )
        ],
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.separated(
              reverse: true,
              padding: const EdgeInsets.only(bottom: 16),
              itemBuilder: (_, index) => messages[index],
              separatorBuilder: (context, index) => const SizedBox(height: 16),
              itemCount: messages.length,
            ),
          ),
          const MessageTextfield()
        ],
      ),
    );
  }
}

final messages = <MessageBubble>[
  const MessageBubble(
    message: 'Hi, how are you doing?',
    timestamp: 'Apr 23, 10:10PM ',
    profileImageUrl: '',
  ),
  const MessageBubble(
    message: 'hello',
    timestamp: 'Apr 23, 10:10PM ',
  ),
  const MessageBubble(
    message: 'message',
    timestamp: 'Apr 23, 10:10PM ',
    profileImageUrl: '',
  ),
  const MessageBubble(
    message: 'Hi, how are you doing?',
    timestamp: 'Apr 23, 10:10PM ',
  ),
  const MessageBubble(
    message:
        'const Padding(padding: EdgeInsets.all(8.0)child: CircleAvatar(),),',
    timestamp: 'Apr 23, 10:10PM ',
    profileImageUrl: '',
  ),
  const MessageBubble(
    message: 'Hi, how are you doing?',
    timestamp: 'Apr 23, 10:10PM ',
    profileImageUrl: '',
  ),
  const MessageBubble(
    message: 'message',
    timestamp: 'Apr 23, 10:10PM ',
  ),
  const MessageBubble(
    message: 'Hi, how are you doing?',
    timestamp: 'Apr 23, 10:10PM ',
    profileImageUrl: '',
  ),
  const MessageBubble(
    message:
        'aljskahskjhjsakjshakjhskjahkjshakhskjhashakhskjhashakjshkahskjahskjahskjahskjhaskjhaksjhakjhskajhskjahskjhaskjhaksjhakjshkjahskjahkjshakjhskajshkjahskjahskjahskjahskjahskjhakjhkjahkjahkjhashakjhskjahsjhakjhajhjahskjahskjhakjshajshakjhsajshajhskjahsjakhskjahskjahskjahskjahskjhashdkjahsdhsajhdakjshakjhdkjshjdahsjakshajkhskjdhasdkjahsdjahdjkashjhdajhdjahsjdashjdhasjdahsjashjsahdjahjdasdhajkdkjsdkjslkjdlksjdljsldjlsjdlksjdkjsdlkjsdlkjsldkjslkdjlksdjlksdjlskjdlksjdlksjdlkjsdkjslkjdslkjdlksjdjslkdjslkjdlksjdsjlkdjslkjdlksjdlksjdlkjsjdslkjdslkjdlskjdlksdj',
    timestamp: 'Apr 23, 10:10PM ',
  ),
  const MessageBubble(
    message: 'Hi, how are you doing?',
    timestamp: 'Apr 23, 10:10PM ',
    profileImageUrl: '',
  ),
  const MessageBubble(
    message: 'message',
    timestamp: 'Apr 23, 10:10PM ',
  ),
  const MessageBubble(
    message: 'Hi, how are you doing?',
    timestamp: 'Apr 23, 10:10PM ',
    profileImageUrl: '',
  ),
  const MessageBubble(
    message: 'message',
    timestamp: 'Apr 23, 10:10PM ',
  ),
  const MessageBubble(
    message: 'Hi, how are you doing?',
    timestamp: 'Apr 23, 10:10PM ',
    profileImageUrl: '',
  ),
  const MessageBubble(
    message: 'message',
    timestamp: 'Apr 23, 10:10PM ',
  )
];
