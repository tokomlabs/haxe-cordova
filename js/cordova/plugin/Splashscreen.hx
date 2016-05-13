package js.cordova.plugin;

/**
Extern for the [cordova-plugin-splashscreen](https://github.com/apache/cordova-plugin-splashscreen) plugin.
**/
@:native("navigator.splashscreen")
extern class Splashscreen {
	public static function show() : Void;
	public static function hide() : Void;
}
