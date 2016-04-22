package js.cordova.plugin;

/**
Extern for the [com.verso.cordova.clipboard](https://github.com/VersoSolutions/CordovaClipboard) plugin.
**/
@:native("window.cordova.plugins.clipboard")
extern class Clipboard {

	static public function copy(text : String) : Void;

	static public function paste(cb : String -> Void) : Void;
}
