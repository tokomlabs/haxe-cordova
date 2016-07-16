package js.cordova.plugin;

typedef StreamingVideoOptions = {
  successCallback : Void -> Void,
  errorCallback : String -> Void,
  orientation : String // 'landscape', 'portrait'...
}

typedef StreamingAudioOptions = {
    bgColor : String,
    bgImage : String,
    bgImageScale : String, // valid values: "fit", "stretch"
    initFullscreen : Bool, // true(default)/false iOS only
    successCallback : Void -> Void,
    errorCallback : String -> Void
  }

/**
Extern for the [cordova-plugin-streaming-media](https://github.com/nchutchind/cordova-plugin-streaming-media) plugin.
**/
@:native("window.plugins.streamingMedia")
extern class StreamingPlayer {
  public static function playVideo(url : String, ? options : StreamingVideoOptions) : Void;
  public static function playAudio(url : String, ? options : StreamingAudioOptions) : Void;
  public static function stopAudio() : Void;
  public static function pauseAudio() : Void;
  public static function resumeAudio() : Void;
}
