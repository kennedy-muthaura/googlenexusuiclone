// import 'package:chewie/chewie.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_html/flutter_html.dart';
// import 'package:video_player/video_player.dart';

// import 'loading_indicator.dart';

// class CustomVideoPlayer extends StatefulWidget {
//   final String videoUrl;
//   final bool looping;
//   final double width;
//   final bool showControls;
//   final double height;

//   const CustomVideoPlayer(
//       {Key? key,
//       required this.videoUrl,
//       required this.looping,
//       required this.showControls,
//       required this.width,
//       required this.height})
//       : super(key: key);

//   @override
//   _CustomVideoPlayerState createState() => _CustomVideoPlayerState();
// }

// class _CustomVideoPlayerState extends State<CustomVideoPlayer> {
//   late VideoPlayerController videoPlayerController;

//   late ChewieController chewieController;

//   @override
//   void initState() {
//     super.initState();
//     videoPlayerController = VideoPlayerController.network(
//       widget.videoUrl,
//     );
//     chewieController = ChewieController(
//         aspectRatio: 16 / 9,
//         allowedScreenSleep: false,
//         placeholder: Container(
//             width: widget.width,
//             height: widget.height,
//             child: Center(child: LoadingIndicator())),
//         videoPlayerController: videoPlayerController,
//         autoPlay: false,
//         autoInitialize: true,
//         looping: widget.looping,
//         allowMuting: false,
//         allowPlaybackSpeedChanging: false,
//         allowFullScreen: false,
//         showControlsOnInitialize: false,
//         errorBuilder: (context, err) {
//           return Container(
//             height: widget.height,
//             width: widget.width,
//             color: Colors.red.shade300,
//             child: Center(
//                 child: Text(
//               err,
//               style: TextStyle(
//                 color: Colors.white,
//               ),
//             )),
//           );
//         },
//         showControls: widget.showControls,
//         startAt: Duration(seconds: 0));
//   }

//   void dispose() {
//     videoPlayerController.dispose();
//     chewieController.dispose();
//     super.dispose();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//         margin: EdgeInsets.symmetric(horizontal: 20),
//         width: widget.width,
//         height: widget.height,
//         child: Chewie(
//           controller: chewieController,
//         ));
//   }
// }

// class CustomYoutubeVideoEmbedder extends StatelessWidget {
//   final String videoUrl;
//   final int width;
//   final int height;

//   const CustomYoutubeVideoEmbedder({
//     Key? key,
//     required this.videoUrl,
//     required this.width,
//     required this.height,
//   }) : super(key: key);
//   Widget getVideo(String url) => Html(
//         data:
//             '<iframe width="$width" height="$height" src=$url frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>',
//       );
//   String getEmbedYoutubeUrl(url) {
//     var res = url.split("=");
//     var embeddedUrl = "https://www.youtube.com/embed/" + res[1];
//     return embeddedUrl;
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       child: AspectRatio(
//         aspectRatio: 16 / 9,
//         child: getVideo(getEmbedYoutubeUrl(videoUrl)),
//       ),
//     );
//   }
// }

// class CustomVimeoVideoEmbedder extends StatelessWidget {
//   final String videoUrl;

//   const CustomVimeoVideoEmbedder({Key? key, required this.videoUrl})
//       : super(key: key);
//   Widget getVideo(String url) => Html(
//         data:
//             '<iframe width="560" height="315" src=$url frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>',
//       );
//   String getEmbedYoutubeUrl(url) {
//     var res = url.split("=");
//     var embeddedUrl = "https://www.youtube.com/embed/" + res[1];
//     return embeddedUrl;
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       child: AspectRatio(
//         aspectRatio: 16 / 9,
//         child: getVideo(getEmbedYoutubeUrl(videoUrl)),
//       ),
//     );
//   }
// }
