import 'package:flutter_music_streaming/data/model/ModelMusic.dart';
import 'package:youtube_explode_dart/youtube_explode_dart.dart';

class MyYoutubeExplore {
  final String youtube_watch_url = "https://youtube.com/watch?v=";
  var _youtubeExplode = YoutubeExplode();

  Future<ModelMusic> explodeformlink(String id) async {
    var video = await _youtubeExplode.videos.get(youtube_watch_url + id);
    var title = video.title;

    var channel = video.author;
    var thumb = video.thumbnails.lowResUrl;
    var manifest = await _youtubeExplode.videos.streams.getManifest(id);
    var audiourl = manifest.audioOnly.withHighestBitrate().url.toString();
    
    print("Title: " + title);
    print("Audio Link: " + audiourl);
    print("Channel: " + channel);

    return ModelMusic(
      title: title,
      id: id,
      audiourl: audiourl,
      channel: channel,
      thumb: thumb
    );
  }

  Future<ModelMusic> createNextVideo(String id) async {
    var video = await _youtubeExplode.videos.get(youtube_watch_url + id);
    var relatedVideos = await _youtubeExplode.videos.getRelatedVideos(video);

    // Lấy video liên quan đầu tiên, nếu có
    if (relatedVideos!.length>0) {
      String newSongid = relatedVideos[0].id.value;
      return explodeformlink(newSongid);
    } else {
      throw Exception("No related videos found");
    }
  }
}

void main() async {
  var nextVideo = await MyYoutubeExplore().createNextVideo("cnHHCR7EW10");
  print("Next video title: " + nextVideo.title);
}
