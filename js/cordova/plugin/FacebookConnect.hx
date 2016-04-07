package js.cordova.plugin;

typedef FacebookConnectOAuthResponse = {
    session_key : Bool,
    accessToken : String,
    expiresIn : Int,
    sig : String,
    ? secret : String,
    userID : String
}

typedef FacebookConnectStatus = {
    status : String, // "connected", ...
    authResponse : FacebookConnectOAuthResponse
}

typedef FacebookConnectDialogOptions = {
	method : String,
	? link : String,
	? caption : String,
	? message : String
}
typedef FacebookConnectDialogResult = {
	? postId : String,
	? from : String,
	? to : String
}

/**
Extern for the [phonegap-facebook-plugin](https://github.com/Wizcorp/phonegap-facebook-plugin) plugin.
**/
@:native("window.facebookConnectPlugin")
extern class FacebookConnect {
	public static function login(permissions : Array<String>, onSuccess : FacebookConnectStatus -> Void, onFailure : String -> Void) : Void;
	public static function getAccessToken(onSuccess : String -> Void, onFailure : String -> Void) : Void;
	public static function logout(onSuccess : Void -> Void, onFailure : String -> Void) : Void;
	public static function getLoginStatus(onSuccess : FacebookConnectStatus -> Void, onFailure : String -> Void) : Void;
	public static function showDialog(options : FacebookConnectDialogOptions, onSuccess : FacebookConnectDialogResult -> Void, onFailure : String -> Void) : Void;
	public static function api(requestPath : String, permissions : Array<String>, onSuccess : Dynamic -> Void, onFailure : String -> Void) : Void;
	public static function logEvent(name : String, params : Dynamic, valueToSum : Float, onSuccess : Dynamic -> Void, onFailure : String -> Void) : Void;
	public static function logPurchase(value : Float, currency : String, onSuccess : Dynamic -> Void, onFailure : String -> Void) : Void;
}
