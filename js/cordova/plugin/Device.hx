package js.cordova.plugin;

/**
Extern for the [cordova-plugin-device](https://github.com/apache/cordova-plugin-device) plugin.
**/
@:native("window.device")
extern class Device {
	static public var cordova : String;
	static public var model : String;
	static public var platform : String;
	static public var uuid : String;
	static public var version : String;
	static public var manufacturer : String;
	static public var isVirtual : Bool;
	static public var serial : String;
}