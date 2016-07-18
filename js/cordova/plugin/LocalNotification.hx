package js.cordova.plugin;

typedef LocalNotificationData = {
	? id : Int,
	? title : String,
	? text : String,
	? every : haxe.extern.EitherType<String,Int>, // "second", "minute", "hour", "day", "week", "month" or "year"
	? at : haxe.extern.EitherType<Date,Int>,
	? firstAt : haxe.extern.EitherType<Date,Int>,
	? badge : Int,
	? sound : String,
	? data : String,
	///
	// Android only
	? icon : String,
	? smallIcon : String,
	? ongoing : Bool,
	? led : String
}

@:enum
abstract LocalNotificationEvent(String) from String to String {
	var Schedule = "schedule";
	var Trigger = "trigger";
	var Click = "click";
	var Update = "update";
	var Clear = "clear";
	var ClearAll = "clearall";
	var Cancel = "cancel";
	var CancelAll = "cancelall";
}

/**
Extern for the [de.appplant.cordova.plugin.local-notification](https://github.com/katzer/cordova-plugin-local-notifications) plugin.
**/
@:native("cordova.plugins.notification.local")
extern class LocalNotification {
	static public function schedule(n : haxe.extern.EitherType<LocalNotificationData,Array<LocalNotificationData>>) : Void;
	static public function update(n : haxe.extern.EitherType<LocalNotificationData,Array<LocalNotificationData>>) : Void;
	static public function on(evt : LocalNotificationEvent, callback : LocalNotificationData -> Void) : Void;
	static public function clear(ids : haxe.extern.EitherType<Int,Array<Int>>, callback : Void -> Void) : Void;
	static public function clearAll(callback : Void -> Void) : Void;
	static public function cancel(ids : haxe.extern.EitherType<Int,Array<Int>>, callback : Void -> Void) : Void;
	static public function cancelAll(callback : Void -> Void) : Void;
	static public function isPresent(id : Int, callback : Bool -> Void) : Void;
	static public function isScheduled(id : Int, callback : Bool -> Void) : Void;
	static public function isTriggered(id : Int, callback : Bool -> Void) : Void;
	static public function getIds(callback : Array<Int> -> Void) : Void;
	static public function getAllIds(callback : Array<Int> -> Void) : Void;
	static public function getScheduledIds(callback : Array<Int> -> Void) : Void;
	static public function getTriggeredIds(callback : Array<Int> -> Void) : Void;
	static public function get(id : haxe.extern.EitherType<Int,Array<Int>>, callback : haxe.extern.EitherType<LocalNotificationData,Array<LocalNotificationData>> -> Void) : Void;
	static public function getScheduled(? id : Int, callback : haxe.extern.EitherType<LocalNotificationData,Array<LocalNotificationData>> -> Void) : Void;
	static public function getTriggered(? id : Int, callback : haxe.extern.EitherType<LocalNotificationData,Array<LocalNotificationData>> -> Void) : Void;
	static public function getAll(callback : Array<LocalNotificationData> -> Void) : Void;
}
