import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

final youtubePlayerControllerProvider = StateNotifierProvider<YoutubePlayerControllerNotifier, YoutubePlayerController?>((ref) {
  return YoutubePlayerControllerNotifier();
});

class YoutubePlayerControllerNotifier extends StateNotifier<YoutubePlayerController?> {
  YoutubePlayerControllerNotifier() : super(null);

  void loadVideo(String videoId) {
    state = YoutubePlayerController(
      initialVideoId: videoId,
      flags: const YoutubePlayerFlags(
        autoPlay: false,
        mute: false,
      ),
    );
  }

  @override
  void dispose() {
    super.dispose();
    state?.dispose();
  }
}
