package js.cordova.plugin;

/**
Extern for the [cordova-plugin-media](https://github.com/apache/cordova-plugin-media) plugin.
**/
@:native("Media")
extern class Media {
	public function new(src : String, mediaSuccess : Void -> Void, ? mediaError : String -> Void, ? mediaStatus : Int -> Void);
	public function getCurrentAmplitude(mediaSuccess : Float -> Void, ? mediaError : String -> Void) : Void;
	public function getCurrentPosition(mediaSuccess : Int -> Void, ? mediaError : String -> Void) : Void;
	public function getDuration() : Int;
	public function play() : Void;
	public function pause() : Void;
	public function pauseRecord() : Void;
	public function release() : Void;
	public function resumeRecord() : Void;
	public function seekTo(ms : Int) : Void;
	public function setVolume(v : Float) : Void;
	public function startRecord() : Void;
	public function stopRecord() : Void;
	public function stop() : Void;
}
