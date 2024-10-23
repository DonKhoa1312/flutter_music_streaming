import 'package:flutter_music_streaming/data/model/ModelMusic.dart';
import 'package:just_audio/just_audio.dart';

class AppAudioService {
  AppAudioService({required this.firstSong});
  final ModelMusic firstSong;
  int current_index = 0;
  final AudioPlayer _audioPlayer = AudioPlayer();
  late List<ModelMusic> _playlist = [];
  Future<bool> playsong() async {
    _playlist.add(firstSong);
    _audioPlayer.setUrl(firstSong.audiourl);
    await _audioPlayer.play();
    return true;
  }

  Future<void> stop() async {
    await _audioPlayer.stop();
    await _audioPlayer.dispose();
  }

  Future<void> pause() async {
    await _audioPlayer.pause();
  }

  Future<void> nextSong() async {
    if (_playlist.length - 1 > 0 && current_index < _playlist.length - 1) {
      current_index++;
      await setplayer(_playlist[current_index].audiourl);
    }
  }

  Future<void> pastSong() async {
    if (current_index > 0) {
      current_index--;
      await setplayer(_playlist[current_index].audiourl);
    }
  }

  Stream<Future<void>> setplayer(String url) async* {
    await _audioPlayer.setUrl(url);
    await _audioPlayer.play();
  }
}

void main() {}
