package js.cordova.plugin;

/**
Extern for the [ionic-plugin-keyboard](https://github.com/driftyco/ionic-plugin-keyboard) plugin.
**/
@:native("window.cordova.plugins.Keyboard")
extern class IonicKeyboard {
	static public function hideKeyboardAccessoryBar(v : Bool) : Void;
	static public function close() : Void;
	static public function disableScroll(v : Bool) : Void;
	static public function show() : Void;
}
