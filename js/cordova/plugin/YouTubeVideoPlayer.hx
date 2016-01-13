package js.cordova.plugin;

/**
Extern for the [com.bunkerpalace.cordova.YoutubeVideoPlayer](https://github.com/Glitchbone/CordovaYoutubeVideoPlayer) plugin.
**/
@:native("window.YoutubeVideoPlayer")
extern class YoutubeVideoPlayer {
	public static function openVideo(youTubeVideoId : String) : Void;
}
