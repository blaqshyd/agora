import 'package:flutter/material.dart';
import 'package:agora_uikit/agora_uikit.dart';

import '../../constants.dart';

class VideoCall extends StatefulWidget {
  const VideoCall({Key? key}) : super(key: key);

  @override
  _VideoCallState createState() => _VideoCallState();
}

class _VideoCallState extends State<VideoCall> {
  final AgoraClient _client = AgoraClient(
    agoraConnectionData: AgoraConnectionData(
      appId: appId,
      channelName: 'agora',
      tempToken: token,
    ),
  );

//! initializing Agora
  @override
  void initState() {
    super.initState();
    _initAgora();
  }

  Future<void> _initAgora() async {
    await _client.initialize();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Stack(
        children: [
          AgoraVideoViewer(
            client: _client,
            layoutType: Layout.floating,
            showNumberOfUsers: true,
            showAVState: true,
          ),
          AgoraVideoButtons(
            client: _client,
            enabledButtons: const [
              BuiltInButtons.callEnd,
              BuiltInButtons.toggleCamera,
              BuiltInButtons.toggleMic,
            ],
          ),
        ],
      ),
    );
  }
}
