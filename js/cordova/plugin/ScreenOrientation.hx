package js.cordova.plugin;

@:enum
abstract Orientation(String) from String to String {	
	var PortraitPrimary = "portrait-primary";
	var PortraitSecondary = "portrait-secondary";
	var LandscapePrimary = "landscape-primary";
	var LandscapeSecondary = "landscape-secondary";
	var Portrait = "portrait";
	var Landscape = "landscape";
}

/**
Extern for the [cordova-plugin-screen-orientation](https://github.com/gbenvenuti/cordova-plugin-screen-orientation) plugin.
**/
@:native("window.screen")
extern class ScreenOrientation {
	static public function lockOrientation(v : Orientation) : Void;
	static public function unlockOrientation() : Void;
	static public var orientation : Orientation;
}
