package js.cordova.plugin;

/**
Extern for the [cordova-plugin-x-socialsharing](https://github.com/EddyVerbruggen/SocialSharing-PhoneGap-Plugin) plugin.
**/
@:native("window.plugins.socialsharing")
extern class SocialSharing {
	public static function share(msg : String, ? subject : String, ? fileUri : String, ? url : String, ? successCb : Void -> Void, ? errorCb : String -> Void) : Void;
	public static function shareViaTwitter(msg : String, ? fileUri : String, ? url : String, ? successCb : Void -> Void, ? errorCb : String -> Void) : Void;
	public static function shareViaFacebook(msg : String, ? fileUri : String, ? url : String, ? successCb : Void -> Void, ? errorCb : String -> Void) : Void;
	public static function shareViaEmail(msg : String, subject : String, to : Array<String>, ? cc : Null<Array<String>>, ? bcc : Null<Array<String>>, ? files : Null<Array<String>>, ? onSuccess : Void -> Void, ? onError : String -> Void) : Void;
	// TODO rest
}