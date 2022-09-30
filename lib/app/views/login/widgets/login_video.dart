import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

class LoginVideo extends StatefulWidget {
  const LoginVideo({
    Key? key,
  }) : super(key: key);

  @override
  State<LoginVideo> createState() => _LoginVideoState();
}

class _LoginVideoState extends State<LoginVideo> {
  late VideoPlayerController _controller;

  @override
  void initState() {
    _controller = VideoPlayerController.asset("assets/videos/background.mp4")
      ..initialize().then((_) {
        _controller.play();
        _controller.setLooping(true);
        setState(() {});
      });
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return FittedBox(
      fit: BoxFit.cover,
      child: SizedBox(
        width: _controller.value.size.width,
        height: _controller.value.size.height,
        child: Opacity(
          opacity: 0.3,
          child: ColorFiltered(
            colorFilter: const ColorFilter.mode(
              Colors.black,
              BlendMode.saturation,
            ),
            child: VideoPlayer(_controller),
          ),
        ),
      ),
    );
  }
}
