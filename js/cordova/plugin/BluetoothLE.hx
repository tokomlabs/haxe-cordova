package js.cordova.plugin;

@:enum
abstract BTState(String) from String to String {
    var On = "on";
    var Off = "off";
    var TurningOn = "turningOn"; // (Android Only)
    var TurningOff = "turningOff"; // (Android Only)
    var Unknown = "unknown"; // (iOS Only)
    var Resetting = "resetting"; // (iOS Only)
    var Unsupported = "unsupported"; // (iOS Only)
    var Unauthorized = "unauthorized"; // (iOS Only)
}

typedef BluetoothLEPeripheral = {
	name : String,
    id : String,
    rssi : Int,
#if ios
    advertising : {
    	kCBAdvDataChannel : Int,
        kCBAdvDataServiceData : Dynamic,
        kCBAdvDataLocalName : String,
        kCBAdvDataServiceUUIDs : Array<String>,
        kCBAdvDataManufacturerData : Dynamic,
        kCBAdvDataTxPowerLevel : Int,
        kCBAdvDataIsConnectable : Bool
    }
#elseif android
    advertising : js.html.ArrayBuffer
#end
}

/**
Extern for the [cordova-plugin-ble-central](https://github.com/don/cordova-plugin-ble-central) plugin.
**/
@:native("window.ble")
extern class BluetoothLE {
	public static function scan(services : Array<String>, seconds : Int, onSuccess : BluetoothLEPeripheral -> Void, onError : String -> Void) : Void;
	public static function startScan(services : Array<String>, onSuccess : BluetoothLEPeripheral -> Void, onError : String -> Void) : Void;
	public static function stopScan(onSuccess : Void -> Void, onError : String -> Void) : Void;
	public static function connect(id : String, onSuccess : BluetoothLEPeripheral -> Void, onError : String -> Void) : Void;
	public static function disconnect(id : String, onSuccess : Void -> Void, onError : String -> Void) : Void;
	public static function write(deviceId : String, serviceUuid : String, characteristicUuid : String, data : js.html.ArrayBuffer, ? onSuccess : Dynamic -> Void, ? onError : String -> Void) : Void;
	public static function writeWithoutResponse(deviceId : String, serviceUuid : String, characteristicUuid : String, data : js.html.ArrayBuffer, onSuccess : Dynamic -> Void, onError : String -> Void) : Void;
    public static function startStateNotifications(success : BTState -> Void, failure : String -> Void) : Void;
    public static function stopStateNotifications(success : Void -> Void, failure : String -> Void) : Void;
	public static function startNotification(deviceId : String, serviceUuid : String, characteristicUuid : String, success : js.html.ArrayBuffer -> Void, failure : String -> Void) : Void;
	public static function read(deviceId : String, serviceUuid : String, characteristicUuid : String, success : js.html.ArrayBuffer -> Void, failure : String -> Void) : Void;
    public static function stopNotification(deviceId : String, serviceUuid : String, characteristicUuid : String, ? success : Void -> Void, ? failure : String -> Void) : Void;
    public static function isEnabled(success : Bool -> Void, ? failure : String -> Void) : Void;
    public static function isConnected(deviceId : String, success : Bool -> Void, ? failure : String -> Void) : Void;
#if android
    public static function showBluetoothSettings(success : Dynamic -> Void, ? failure : String -> Void) : Void;
    public static function enable(success : Void -> Void, failure : String -> Void) : Void;
#end
}