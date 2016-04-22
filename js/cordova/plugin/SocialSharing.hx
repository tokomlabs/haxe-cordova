package js.cordova.plugin;

/**
Extern for the [cordova-plugin-x-socialsharing](https://github.com/EddyVerbruggen/SocialSharing-PhoneGap-Plugin) plugin.
**/
@:native("window.plugins.socialsharing")
extern class SocialSharing {
	public static function canShareVia(srvId : String, msg : String, ? subject : String, ? fileUri : String, ? url : String, ? successCb : Void -> Void, ? errorCb : String -> Void) : Void;
	public static function share(msg : String, ? subject : String, ? fileUri : String, ? url : String, ? successCb : Void -> Void, ? errorCb : String -> Void) : Void;
	public static function shareViaTwitter(msg : String, ? fileUri : String, ? url : String, ? successCb : Void -> Void, ? errorCb : String -> Void) : Void;
	public static function shareViaFacebook(msg : String, ? fileUri : String, ? url : String, ? successCb : Void -> Void, ? errorCb : String -> Void) : Void;
	public static function shareViaEmail(msg : String, subject : String, to : Array<String>, ? cc : Null<Array<String>>, ? bcc : Null<Array<String>>, ? files : Null<Array<String>>, ? onSuccess : Void -> Void, ? onError : String -> Void) : Void;
	
	// TODO add (iOS only) : <button onclick="window.plugins.socialsharing.shareViaSMS({'message':'My cool message', 'subject':'The subject', 'image':'https://www.google.nl/images/srpr/logo4w.png'}, '0612345678,0687654321', function(msg) {console.log('ok: ' + msg)}, function(msg) {alert('error: ' + msg)})">share via SMS</button>
	public static function shareViaSMS(msg : String, phoneNumbers : String, ? onSuccess : String -> Void, ? onError : String -> Void) : Void;
	// TODO rest
}