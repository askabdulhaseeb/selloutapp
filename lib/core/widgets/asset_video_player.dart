
import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

import 'show_loading.dart';

class AssetVideoPlayer extends StatefulWidget {
  const AssetVideoPlayer({
    required this.path,
    this.isPlay = false,
    this.isMute = true,
    Key? key,
  }) : super(key: key);
  final String path;
  final bool isPlay;
  final bool isMute;
  @override
  State<AssetVideoPlayer> createState() => _AssetVideoPlayerState();
}

class _AssetVideoPlayerState extends State<AssetVideoPlayer> {
  late VideoPlayerController controller;
  @override
  void initState() {
    controller = VideoPlayerController.asset(widget.path);
    // ignore: always_specify_types
    controller.initialize().then((value) {
      widget.isPlay ? controller.play() : controller.pause();
      controller.setVolume(widget.isMute ? 0 : 1);
      setState(() {});
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: controller.value.aspectRatio,
      child: controller.value.isInitialized
          ? VideoPlayer(controller)
          : const ShowLoading(),
    );
  }
}
