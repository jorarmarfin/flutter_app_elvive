import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

// Provider para el controlador del YouTube Player
final videoControllerProvider = Provider.family<YoutubePlayerController, String>((ref, videoId) {
  return YoutubePlayerController(
    initialVideoId: videoId,
    flags: const YoutubePlayerFlags(
      autoPlay: false,
      mute: false,
    ),
  );
});
