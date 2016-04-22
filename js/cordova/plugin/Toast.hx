package js.cordova.plugin;

@:enum
abstract ToastPosition(String) from String to String {
	var Top = "top";
	var Center = "center";
	var Bottom = "bottom";
}

/**
Extern for the [cordova-plugin-x-toast](https://github.com/EddyVerbruggen/Toast-PhoneGap-Plugin) plugin.
**/
@:native("window.plugins.toast")
extern class Toast {

	// duration: 'short', 'long', '3000', 900 (the latter are milliseconds)
	static public function show(message : String, duration : haxe.extern.EitherType<String,Int>, position : ToastPosition, ? successCb : String -> Void, ? errorCb : String -> Void) : Void;

	static public function showShortTop(message : String, ? successCb : String -> Void, ? errorCb : String -> Void) : Void;
	
	static public function showShortCenter(message : String, ? successCb : String -> Void, ? errorCb : String -> Void) : Void;
	
	static public function showShortBottom(message : String, ? successCb : String -> Void, ? errorCb : String -> Void) : Void;
	
	static public function showLongTop(message : String, ? successCb : String -> Void, ? errorCb : String -> Void) : Void;
	
	static public function showLongCenter(message : String, ? successCb : String -> Void, ? errorCb : String -> Void) : Void;
	
	static public function showLongBottom(message : String, ? successCb : String -> Void, ? errorCb : String -> Void) : Void;

	// TODO showWithOptions

	static public function hide(? successCb : String -> Void) : Void;
}
