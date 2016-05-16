package js.cordova.plugin;

@:native("Connection")
extern class ConnectionType {
	static public var UNKNOWN : ConnectionType;
	static public var ETHERNET : ConnectionType;
	static public var WIFI : ConnectionType;
	static public var CELL_2G : ConnectionType;
	static public var CELL_3G : ConnectionType;
	static public var CELL_4G : ConnectionType;
	static public var CELL : ConnectionType;
	static public var NONE : ConnectionType;
}

/**
Extern for the [cordova-plugin-network-information](https://github.com/apache/cordova-plugin-network-information) plugin.
**/
@:native("navigator.connection")
extern class NetworkInformation {
	
	@:native("type")
	static public var type : ConnectionType;
}
