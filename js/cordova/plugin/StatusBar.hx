package js.cordova.plugin;

/**
Extern for the [cordova-plugin-statusbar](https://github.com/apache/cordova-plugin-statusbar) plugin.
**/
@:native("StatusBar")
extern class StatusBar {
	static public function overlaysWebView(v : Bool) : Void;
	static public function styleDefault() : Void;
	static public function styleLightContent() : Void;
	static public function styleBlackTranslucent() : Void;
	static public function styleBlackOpaque() : Void;
	static public function backgroundColorByName(v : String) : Void;
	static public function backgroundColorByHexString(v : String) : Void;
	static public function hide() : Void;
	static public function show() : Void;
	static public var isVisible : Bool;
}
