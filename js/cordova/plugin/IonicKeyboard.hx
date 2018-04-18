package js.cordova.plugin;

/**
Extern for the [cordova-plugin-ionic-keyboard](https://github.com/ionic-team/cordova-plugin-ionic-keyboard) plugin.
**/
@:native("Keyboard")
extern class IonicKeyboard {
	static public function hideKeyboardAccessoryBar(value : Bool) : Void;
	static public function hideFormAccessoryBar(value : Bool, ? success : Bool -> Void) : Void;
	static public function close() : Void;
	static public function hide() : Void;
	static public function show() : Void;
}
