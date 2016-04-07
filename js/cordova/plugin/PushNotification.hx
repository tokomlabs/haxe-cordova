package js.cordova.plugin;

import haxe.extern.EitherType;

typedef PushNotificationOptionsIOS = {
	? alert : Bool,
	? badge : Bool,
	? sound : Bool,
	? clearBadge : Bool,
	? senderID : String,
	? gcmSandbox : Bool,
	? topics : Array<String>
}

typedef PushNotificationOptionsAndroid = {
	senderID : String,
	? icon : String,
	? iconColor : String,
	? sound : Bool,
	? vibrate : Bool,
	? clearNotifications : Bool,
	? forceShow : Bool,
	? topics : Array<String>
}

typedef PushNotificationOptions = {
	? android : PushNotificationOptionsAndroid,
	? ios : PushNotificationOptionsIOS
}

typedef RegistrationData = {
	registrationId : String
}

typedef NotificationData = {
	message : String,
	? title : String,
	count : String,
	sound : String,
	image : String,
	? additionalData : { foreground : Bool }
}

/**
Extern for the [phonegap-plugin-push](https://github.com/phonegap/phonegap-plugin-push) plugin.
**/
@:native("window.PushNotification")
extern class PushNotification {
	public static function init(options : PushNotificationOptions) : PushNotification;
	public function on(ev : String, cb : EitherType<RegistrationData,EitherType<NotificationData, js.Error>> -> Void) : Void;
	public function finish(? successCb : Void -> Void, ? errorCb : String -> Void) : Void;
	public function unregister(? successCb : Void -> Void, ? errorCb : String -> Void) : Void;
}