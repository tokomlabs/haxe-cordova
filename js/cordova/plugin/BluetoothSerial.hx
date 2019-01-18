package js.cordova.plugin;

typedef BluetoothSerialDevice = {
	id: String,
    name: String,
// #if ios
    ? uuid: String,
    ? rssi: Int,
// #elseif android
	? address: String,
	//class: String
// #end
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
	public static function write(data : haxe.extern.EitherType<Array<Int>,js.html.ArrayBuffer>, success : Void -> Void, failure : String -> Void) : Void;

	public static function subscribeRawData(success : js.html.ArrayBuffer -> Void, failure : String -> Void) : Void;
	public static function unsubscribeRawData(success : Void -> Void, failure : String -> Void) : Void;
	public static function isConnected(success : Void -> Void, failure : Void -> Void) : Void;
	public static function isEnabled(success : Void -> Void, failure : Void -> Void) : Void;
	public static function enable(success : Void -> Void, failure : String -> Void) : Void;
}
// TODO
// bluetoothSerial.connectInsecure
// bluetoothSerial.available
// bluetoothSerial.read
// bluetoothSerial.readUntil
// bluetoothSerial.subscribe
// bluetoothSerial.unsubscribe
// bluetoothSerial.clear
// bluetoothSerial.readRSSI 
// bluetoothSerial.showBluetoothSettings
// bluetoothSerial.setName
// bluetoothSerial.setDiscoverable