import 'package:church_app/util/color_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:video_player/video_player.dart';

/// Stateful widget to fetch and then display video content.
class LiveStream extends StatefulWidget {
  const LiveStream({super.key});

  @override
  _LiveStreamState createState() => _LiveStreamState();
}

class _LiveStreamState extends State<LiveStream> {
  late VideoPlayerController _controller;
  late Future<void> _initializeVideoPlayerFuture;

  @override
  void initState() {
    super.initState();
    // _controller = VideoPlayerController.network(
    //     'https://flutter.github.io/assets-for-api-docs/assets/videos/bee.mp4'
    //     //'https://www.youtube.com/watch?v=BBAyRBTfsOU'
    //     )
    //   ..initialize().then((_) {
    //     // Ensure the first frame is shown after the video is initialized, even before the play button has been pressed.
    //     setState(() {});
    //   });
    _controller = VideoPlayerController.network(
      'https://flutter.github.io/assets-for-api-docs/assets/videos/butterfly.mp4',
    );
    //_controller.setLooping(true);
    // Initialize the controller and store the Future for later use.
    _initializeVideoPlayerFuture = _controller.initialize();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: ColorUtil.navyBlue,
        //elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 15),
        child: Column(
          children: [
            SizedBox(
              height: 15,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  Icons.live_tv_outlined,
                  size: 32,
                  color: ColorUtil.navyBlue,
                ),
                SizedBox(
                  width: 10,
                ),
                Text(
                  'Live Stream',
                  style: TextStyle(
                      fontSize: 28,
                      color: ColorUtil.navyBlue,
                      fontWeight: FontWeight.w400),
                ),
              ],
            ),
            SizedBox(height: 20.h,),
              Container(
                //height: 220,
           // padding: const EdgeInsets.all(20),
            child: AspectRatio(
              aspectRatio: _controller.value.aspectRatio,
              child: Stack(
                alignment: Alignment.bottomCenter,
                children: <Widget>[
                  VideoPlayer(_controller),
                  _ControlsOverlay(controller: _controller),
                  VideoProgressIndicator(_controller, allowScrubbing: true),
                ],
              ),
            ),
          ),
            // SizedBox(
            //   height: 300,
            //   child: FutureBuilder(
            //     future: _initializeVideoPlayerFuture,
            //     builder: (context, snapshot) {
            //       if (snapshot.connectionState == ConnectionState.done) {
            //         // If the VideoPlayerController has finished initialization, use
            //         // the data it provides to limit the aspect ratio of the video.
            //         return Stack(
            //           alignment: Alignment.center,
            //           children: [
            //             Container(
            //               width: 1.sw,
            //               height: 220,
            //               color: ColorUtil.navyBlue,
            //             ),
            //             AspectRatio(
            //               aspectRatio: _controller.value.aspectRatio,
            //               // Use the VideoPlayer widget to display the video.
            //               //child: VideoPlayer(_controller),
            //               child: Stack(
            //                 children: [
            //                   ClosedCaption(text: _controller.value.caption.text),
            //       _ControlsOverlay(controller: _controller),
            //       VideoProgressIndicator(_controller, allowScrubbing: true),
            //                 ],
            //               ),
            //             ),
            //             // GestureDetector(
            //             //   onTap: () {
            //             //     setState(() {
            //             //       _controller.value.isPlaying
            //             //           ? _controller.pause()
            //             //           : _controller.play();

            //             //     });
            //             //   },
            //             //   child:
            //             //       //_controller.value.isPlaying ?Container():
            //             //       Container(
            //             //     width: 75,
            //             //     height: 75,
            //             //     decoration: BoxDecoration(
            //             //         borderRadius: BorderRadius.circular(75),
            //             //         color: ColorUtil.navyBlue),
            //             //     child: Icon(
            //             //       _controller.value.isPlaying
            //             //           ? Icons.pause
            //             //           : Icons.play_arrow,
            //             //       size: 32,
            //             //       color: Colors.white,
            //             //     ),
            //             //   ),
            //             // )
            //           ],
            //         );
            //       } else {
            //         // If the VideoPlayerController is still initializing, show a
            //         // loading spinner.
            //         return const Center(
            //           child: CircularProgressIndicator(),
            //         );
            //       }
            //     },
            //   ),
            // ),
          ],
        ),
      ),
      // floatingActionButton: FloatingActionButton(
      //   onPressed: () {
      //     // Wrap the play or pause in a call to `setState`. This ensures the
      //     // correct icon is shown.
      //     setState(() {
      //       // If the video is playing, pause it.
      //       if (_controller.value.isPlaying) {
      //         _controller.pause();
      //       } else {
      //         // If the video is paused, play it.
      //         _controller.play();
      //       }
      //     });
      //   },
      //   // Display the correct icon depending on the state of the player.
      //   child: Icon(
      //     _controller.value.isPlaying ? Icons.pause : Icons.play_arrow,
      //   ),
      // ),
    );
    //   body: Padding(
    //     padding: EdgeInsets.symmetric(horizontal: 15,vertical: 15),
    //     child: Column(
    //       children: [
    //         SizedBox(height: 15,),
    //               Row(
    //                 mainAxisAlignment: MainAxisAlignment.center,
    //                 children: [
    //                   Icon(
    //                     Icons.live_tv_outlined,
    //                     size: 32,
    //                     color: ColorUtil.navyBlue,
    //                   ),
    //                   SizedBox(
    //                     width: 10,
    //                   ),
    //                   Text(
    //                     'Live Stream',
    //                     style: TextStyle(fontSize: 28, color: ColorUtil.navyBlue,fontWeight: FontWeight.w400),
    //                   ),

    //                 ],
    //               ),
    //               SizedBox(height: 15,),
    //         Container(
    //           width: 1.sw,
    //           height: 250,

    //           //height: ,
    //           child: _controller.value.isInitialized
    //               ? AspectRatio(
    //                   aspectRatio: _controller.value.aspectRatio,
    //                   child: VideoPlayer(_controller),
    //                 )
    //               : Container(),
    //         ),
    //       ],
    //     ),
    //   ),
    //   floatingActionButton: FloatingActionButton(
    //     backgroundColor: ColorUtil.navyBlue,

    //     onPressed: () {
    //       setState(() {
    //         _controller.value.isPlaying
    //             ? _controller.pause()
    //             : _controller.play();
    //       });
    //     },
    //     child: Icon(
    //       _controller.value.isPlaying ? Icons.pause : Icons.play_arrow,
    //     ),
    //   ),
    // )
    ;
  }

  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
  }
}

class _ControlsOverlay extends StatelessWidget {
  const _ControlsOverlay({required this.controller});

  static const List<Duration> _exampleCaptionOffsets = <Duration>[
    Duration(seconds: -10),
    Duration(seconds: -3),
    Duration(seconds: -1, milliseconds: -500),
    Duration(milliseconds: -250),
    Duration.zero,
    Duration(milliseconds: 250),
    Duration(seconds: 1, milliseconds: 500),
    Duration(seconds: 3),
    Duration(seconds: 10),
  ];
  static const List<double> _examplePlaybackRates = <double>[
    0.25,
    0.5,
    1.0,
    1.5,
    2.0,
    3.0,
    5.0,
    10.0,
  ];

  final VideoPlayerController controller;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        AnimatedSwitcher(
          duration: const Duration(milliseconds: 50),
          reverseDuration: const Duration(milliseconds: 200),
          child: controller.value.isPlaying
              ? const SizedBox.shrink()
              : Container(
                  color: Colors.black26,
                  child: const Center(
                    child: Icon(
                      Icons.play_arrow,
                      color: Colors.white,
                      size: 100.0,
                      semanticLabel: 'Play',
                    ),
                  ),
                ),
        ),
        GestureDetector(
          onTap: () {
            controller.value.isPlaying ? controller.pause() : controller.play();
          },
        ),
        // Align(
        //   alignment: Alignment.topLeft,
        //   child: PopupMenuButton<Duration>(
        //     initialValue: controller.value.captionOffset,
        //     tooltip: 'Caption Offset',
        //     onSelected: (Duration delay) {
        //       controller.setCaptionOffset(delay);
        //     },
        //     itemBuilder: (BuildContext context) {
        //       return <PopupMenuItem<Duration>>[
        //         for (final Duration offsetDuration in _exampleCaptionOffsets)
        //           PopupMenuItem<Duration>(
        //             value: offsetDuration,
        //             child: Text('${offsetDuration.inMilliseconds}ms'),
        //           )
        //       ];
        //     },
        //     child: Padding(
        //       padding: const EdgeInsets.symmetric(
        //         // Using less vertical padding as the text is also longer
        //         // horizontally, so it feels like it would need more spacing
        //         // horizontally (matching the aspect ratio of the video).
        //         vertical: 12,
        //         horizontal: 16,
        //       ),
        //       child: Text('${controller.value.captionOffset.inMilliseconds}ms'),
        //     ),
        //   ),
        // ),
        // Align(
        //   alignment: Alignment.topRight,
        //   child: PopupMenuButton<double>(
        //     initialValue: controller.value.playbackSpeed,
        //     tooltip: 'Playback speed',
        //     onSelected: (double speed) {
        //       controller.setPlaybackSpeed(speed);
        //     },
        //     itemBuilder: (BuildContext context) {
        //       return <PopupMenuItem<double>>[
        //         for (final double speed in _examplePlaybackRates)
        //           PopupMenuItem<double>(
        //             value: speed,
        //             child: Text('${speed}x'),
        //           )
        //       ];
        //     },
        //     child: Padding(
        //       padding: const EdgeInsets.symmetric(
        //         // Using less vertical padding as the text is also longer
        //         // horizontally, so it feels like it would need more spacing
        //         // horizontally (matching the aspect ratio of the video).
        //         vertical: 12,
        //         horizontal: 16,
        //       ),
        //       child: Text('${controller.value.playbackSpeed}x'),
        //     ),
        //   ),
        // ),
      ],
    );
  }
}
