package js.cordova.plugin;

typedef PushwooshNotification = {
	collapse_key : String, // "do_not_collapse",
	foreground : Bool, // true,
	message_id : Int, // 1001,
	onStart : Bool, // false,
	p : String, // "[",
	pri : String, // "",
	pw_msg : String, // "1",
	title : String, // "test send push thomas number 2",
	u : String, // "{\"type\":\"go-to\",\"specific\":{\"url\":\"/journeys\"}}",
	userdata : Dynamic,
	vib : String // "0"
}

typedef PushwooshConfig = {
	appid : String,
	? projectid : String,
	? serviceName : String
}

@:enum
abstract PushwooshEvent(String) to String {
	var PushReceive = 'push-receive';
	var PushNotification = 'push-notification';
}

/**
Extern for the [pushwoosh-cordova-plugin](https://github.com/Pushwoosh/pushwoosh-phonegap-plugin) plugin.
**/
// @:native("cordova.require('pushwoosh-cordova-plugin.PushNotification')")
extern class Pushwoosh {
	/*
	Call this to register for push notifications and retreive a push Token
	*/
	public function registerDevice(? onSuccess : Dynamic -> Void, ? onError : String -> Void) : Void;
	/*
	Call this to set tags for the device
	*/
	public function setTags(tags : Dynamic, ? onSuccess : String -> Void, ? onError : String -> Void) : Void;
	/*
	Call this to get push token if it is available.
	*/
	public function getPushToken(onSuccess : String -> Void) : Void;
	/*
	Call this to get Pushwoosh HWID used for communications with Pushwoosh API
	*/
	public function getPushwooshHWID(onSuccess : String -> Void) : Void;
	/*
	Call this first thing with your Pushwoosh App ID (pw_appid parameter) and Google Project ID for Android (projectid parameter)
	*/
	public function onDeviceReady(config : PushwooshConfig) : Void;
	/*
	Call this to get tags for the device
	*/
	public function getTags(onSuccess : Dynamic -> Void, ? onError : String -> Void) : Void;
	/*
	Unregisters device from push notifications
	*/
	public function unregisterDevice(? onSuccess : String -> Void, ? onError : String -> Void) : Void;
	/*
	Starts geolocation based push notifications.
	*/
	public function startLocationTracking(? onSuccess : String -> Void, ? onError : String -> Void) : Void;
	/*
	Stops geolocation based push notifications
	*/
	public function stopLocationTracking(? onSuccess : String -> Void, ? onError : String -> Void) : Void;
	/*
	Android only, Creates local notification, config params: {msg:”message”, seconds:30, userData:”optional”}
	*/
	public function createLocalNotification(msg : Dynamic, ? onSuccess : String -> Void, ? onError : String -> Void) : Void;
	/*
	Android only, Clears pending local notifications created by createLocalNotification
	*/
	public function clearLocalNotification() : Void;
	/*
	Android only, Clears all notifications presented in Android Notification Center
	*/
	public function clearNotificationCenter() : Void;
	/*
	Android only, Deprecated, use startLocationTracking and stopLocationTracking
	*/
	@:deprecated("use startLocationTracking and stopLocationTracking")
	public function startGeoPushes(? onSuccess : String -> Void, ? onError : String -> Void) : Void;
	/*
	Android only, Deprecated, use startLocationTracking and stopLocationTracking
	*/
	@:deprecated("use startLocationTracking and stopLocationTracking")
	public function stopGeoPushes(? onSuccess : String -> Void, ? onError : String -> Void) : Void;
	/*
	Android only, iOS available per request, Call this to start beacon tracking
	*/
	public function startBeaconPushes(? onSuccess : String -> Void, ? onError : String -> Void) : Void;
	/*
	Android only, iOS available per request, Call this to stop beacon tracking
	*/
	public function stopBeaconPushes(? onSuccess : String -> Void, ? onError : String -> Void) : Void;
	/*
	Android only, let the plugin know that the app went to background mode (or vise versa).
	*/
	public function setBeaconBackgroundMode(on : Bool, ? onSuccess : String -> Void, ? onError : String -> Void) : Void;
	/*
	Android only, Allows multiple notifications to be displayed in the Android Notification Center
	*/
	public function setMultiNotificationMode(? onSuccess : String -> Void, ? onError : String -> Void) : Void;
	/*
	Android only, Allows only the last one notification to be displayed in the Android Notification Center
	*/
	public function setSingleNotificationMode(? onSuccess : String -> Void, ? onError : String -> Void) : Void;
	/*
	Android only, Sets default sound to play when push notification arrive.
	*/
	public function setSoundType(type : Int, ? onSuccess : String -> Void, ? onError : String -> Void) : Void;
	/*
	Android only, Sets default vibration mode when push notification arrive.
	*/
	public function setVibrateType(type : Int, ? onSuccess : String -> Void, ? onError : String -> Void) : Void;
	/*
	Android only, Should the screen be lit up when push notification arrive
	*/
	public function setLightScreenOnNotification(on : Bool, ? onSuccess : String -> Void, ? onError : String -> Void) : Void;
	/*
	Android only, Set to enable led blinking when notification arrives and display is off
	*/
	public function setEnableLED(on : Bool, ? onSuccess : String -> Void, ? onError : String -> Void) : Void;
	/*
	Android only, Gets push history, returns array of push notifications received.
	*/
	public function getPushHistory(onSuccess : Dynamic -> Void) : Void;
	/*
	Android only, Clears push history
	*/
	public function clearPushHistory() : Void;
	/*
	iOS only, Call this to get a detailed status of push notification permissions.
	*/
	public function getRemoteNotificationStatus(onSuccess : Array<String> -> Void) : Void;
	/*
	iOS only, Call this to set the application icon badge
	*/
	public function setApplicationIconBadgeNumber(v : Int) : Void;
	/*
	iOS only, Call this to get the application icon badge
	*/
	public function getApplicationIconBadgeNumber(onSuccess : Int -> Void) : Void;
	/*
	iOS only, Call this to add value to the application icon badge
	*/
	public function addToApplicationIconBadgeNumber(v : Int) : Void;
	/*
	iOS only, Call this to clear all notifications from the notification center
	*/
	public function cancelAllLocalNotifications(onSuccess : Void -> Void) : Void;
	/*
	Returns push notification payload if the app was started in response to push notification or null otherwise
	*/
	public function getLaunchNotification(onSuccess : Dynamic -> Void) : Void;
	/*
	iOS, Android Set User indentifier.
	*/
	public function setUserId(userId : String) : Void;
	/*
	iOS, Android Post events for In-App Messages.
	*/
	public function postEvent(event : String, attributes : Dynamic) : Void;
}
