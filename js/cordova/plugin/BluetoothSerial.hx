package js.cordova.plugin;

typedef BluetoothSerialDevice = {
	id: String,
    name: String,
#if ios
    uuid: String,
    rssi: Int
#elseif android
	address: String
	//class: String
#end
}

/**
Extern for the [cordova-plugin-bluetooth-serial](https://github.com/don/BluetoothSerial) plugin.
**/
@:native("window.bluetoothSerial")
extern class BluetoothSerial {
	public static function list(success : Array<BluetoothSerialDevice> -> Void, failure : String -> Void) : Void;
#if (!ios)
	public static function discoverUnpaired(success : Array<BluetoothSerialDevice> -> Void, failure : String -> Void) : Void;
#end
	public static function setDeviceDiscoveredListener(cb : BluetoothSerialDevice -> Void) : Void;
	public static function clearDeviceDiscoveredListener() : Void;
	public static function connect(macAddress_or_uuid : String, connectSuccess : Void -> Void, connectFailure : String -> Void) : Void;
	public static function disconnect(connectSuccess : Void -> Void, connectFailure : String -> Void) : Void;
	public static function write(data : js.html.ArrayBuffer, success : Void -> Void, failure : String -> Void) : Void;
}