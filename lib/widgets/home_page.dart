import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

class HomePage extends StatelessWidget {

  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 50, vertical: 50),
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage("assets/menu_bg.jpg"),
          fit: BoxFit.fill,
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          // menu text
          const Spacer(flex: 2),

          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [

              Image.asset(
                "assets/chai_jee_logo.jpg",
                width: 120,
                height: 120,
              ),
              const SizedBox(width: 2),
              Image.asset(
                "assets/waffle_jee_logo.jpg",
                width: 120,
                height: 120,
              ),

            ],
          ),

          const Spacer(),
          SizedBox(
            width: double.infinity,
            child: Text(
              "Menu",
              style: TextStyle(
                fontWeight: FontWeight.w800,
                color: Colors.black,
                fontSize: 58,
              ),
              textAlign: TextAlign.center,
            ),
          ),
          const Spacer(),

          SizedBox(
            height: 100,
            child: const VideoPlayerWidget(),
          ),
          const Spacer(flex: 3),
        ],
      ),
    );
  }
}

class VideoPlayerWidget extends StatefulWidget {
  const VideoPlayerWidget({super.key});

  @override
  State<VideoPlayerWidget> createState() => _VideoPlayerWidgetState();
}

class _VideoPlayerWidgetState extends State<VideoPlayerWidget> {

  late VideoPlayerController _controller;

  @override
  void initState() {
    super.initState();
    _controller = VideoPlayerController.asset("assets/intro_animation.mp4")
      ..initialize().then((value) {
        setState(() {});
        _controller.setLooping(true);
        _controller.play();
      });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: _controller.value.isInitialized
          ? AspectRatio(aspectRatio: 16/9, child: VideoPlayer(_controller))
          : const SizedBox(),
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
}
