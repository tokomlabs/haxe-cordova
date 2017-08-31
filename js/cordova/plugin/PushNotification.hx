package js.cordova.plugin;

import haxe.extern.EitherType;

typedef PushNotificationOptionsIOS = {
	? alert : Bool,
	? badge : Bool,
	? sound : Bool,
	? clearBadge : Bool,
	? fcmSandbox : Bool,
	? categories : Dynamic, // The data required in order to enabled Action Buttons for iOS. See Action Buttons on iOS for more details.
	? topics : Array<String>
}

typedef PushNotificationOptionsAndroid = {
	? icon : String,
	? iconColor : String,
	? sound : Bool,
	? vibrate : Bool,
	? clearBadge : Bool,
	? clearNotifications : Bool,
	? forceShow : Bool,
	? topics : Array<String>,
	? messageKey : String,
	? titleKey : String,
}

typedef PushNotificationOptions = {
	? android : PushNotificationOptionsAndroid,
	? ios : PushNotificationOptionsIOS
}

typedef RegistrationData = {
	registrationId : String,
	registrationType : String
}

typedef NotificationData = {
	message : String,
	? title : String,
	count : String,
	sound : String,
	image : String,
	? additionalData : Dynamic //{ ? coldstart : Bool, ? dismissed : Bool, ? foreground : Bool }
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
	public function subscribe(topic : String, ? successCb : Void -> Void, ? errorCb : js.Error -> Void) : Void;
	public function unsubscribe(topic : String, ? successCb : Void -> Void, ? errorCb : js.Error -> Void) : Void;
}