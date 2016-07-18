package js.cordova.plugin;

/**
Extern for the [cordova-open](https://github.com/disusered/cordova-open) plugin.
**/
@:native("cordova.plugins.disusered")
extern class Opener {
	static public function open(uri : String, onSuccess : Void -> Void, onError : Int -> Void) : Void;
}
