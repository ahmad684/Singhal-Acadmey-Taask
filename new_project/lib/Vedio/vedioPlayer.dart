import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

class VedioSeries extends StatefulWidget {
  const VedioSeries({Key? key}) : super(key: key);

  @override
  _VedioSeriesState createState() => _VedioSeriesState();
}

class _VedioSeriesState extends State<VedioSeries> {
  late VideoPlayerController _controller;
 late Future<void> _initializevideoplayer;

  @override
  void initState() {
    _initVideoCtrl();
    // TODO: implement initState

    super.initState();
  }
  void _initVideoCtrl() {
    _controller=VideoPlayerController.network("https://support.google.com/google-ads/answer/7166933?hl=en");
    _initializevideoplayer=_controller.initialize();

    _controller.setLooping(true);
    _controller.setVolume(10);
  }
  @override
  void dispose() {
    // TODO: implement dispose
    _controller.dispose();
    super.dispose();
  }
  @override

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Vedio'),

      ),
      body: FutureBuilder(
        future: _initializevideoplayer,
        builder: (context,snapshot){
          if(snapshot.connectionState==ConnectionState.done)
            {
              return AspectRatio(aspectRatio: _controller.value.aspectRatio,
              child: VideoPlayer(_controller),);

            }else{
            return Center(
              child: CircularProgressIndicator(),
            );
          }
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){if(_controller.value.isPlaying){
          _controller.pause();
        }else{
          _controller.play();
        }

        },
        child: Icon(_controller.value.isPlaying?Icons.pause:Icons.play_arrow),
      ),
    );
  }
}
