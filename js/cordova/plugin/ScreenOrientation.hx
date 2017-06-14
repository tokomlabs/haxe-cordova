package js.cordova.plugin;

@:enum
abstract Orientation(String) from String to String {	
	var PortraitPrimary = "portrait-primary";
	var PortraitSecondary = "portrait-secondary";
	var LandscapePrimary = "landscape-primary";
	var LandscapeSecondary = "landscape-secondary";
	var Portrait = "portrait";
	var Landscape = "landscape";
	var Any = "any";
}

/**
Extern for the [cordova-plugin-screen-orientation](https://github.com/apache/cordova-plugin-screen-orientation) plugin.
**/
@:native("window.screen.orientation")
extern class ScreenOrientation {
	static public function lock(v : Orientation) : Void;
	static public function unlock() : Void;
	static public function addEventListener(type : String, cb : Void -> Void) : Void;
	static public var onchange : Void -> Void;
	static public var type : Orientation;
}
