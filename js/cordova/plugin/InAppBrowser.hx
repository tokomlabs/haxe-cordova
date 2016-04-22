package js.cordova.plugin;

typedef InAppBrowserEvent = {
	type : String, // either "loadstart", "loadstop", "loaderror", or "exit".
	url : String,
	? code : Int,
	? message : String
}

/**
Extern for the [cordova-plugin-inappbrowser](https://github.com/apache/cordova-plugin-inappbrowser) plugin.
**/
@:native("window.cordova.InAppBrowser")
extern class InAppBrowser {

	public static function open(url : String, target : String, ? options : String) : InAppBrowser;

	public function addEventListener(eventName : String, cb : InAppBrowserEvent -> Void) : Void;

	public function removeEventListener(eventName : String, cb : InAppBrowserEvent -> Void) : Void;

	public function executeScript(details : { ? file : String, ? code : String }, cb : Dynamic -> Void) : Void;

	public function insertCSS(details : { ? file : String, ? code : String }, cb : Void -> Void) : Void;

	public function show() : Void;

	public function close() : Void;
}
