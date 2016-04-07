package js.cordova.plugin;

/**
Extern for the [cordova-plugin-inappbrowser](https://github.com/apache/cordova-plugin-inappbrowser) plugin.
**/
@:native("window.cordova.InAppBrowser")
extern class InAppBrowser {
	/**
	url: The URL to load (String). Call encodeURI() on this if the URL contains Unicode characters.

	target: The target in which to load the URL, an optional parameter that defaults to _self. (String)

		_self: Opens in the Cordova WebView if the URL is in the white list, otherwise it opens in the InAppBrowser.
		_blank: Opens in the InAppBrowser.
		_system: Opens in the system's web browser.

	options: Options for the InAppBrowser. Optional, defaulting to: location=yes. (String)
	**/
	public static function open(url : String, target : String, ? options : String) : InAppBrowser;

	// TODO
	// public function addEventListener() : Void;
	// public function removeEventListener() : Void;
	// public function close() : Void;
	// public function show() : Void;
	// public function executeScript() : Void;
	// public function insertCSS() : Void;
}