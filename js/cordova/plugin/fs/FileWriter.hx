package js.cordova.plugin.fs;

/**
This file is part of the Haxe externs for the [cordova-plugin-file](https://github.com/apache/cordova-plugin-file) plugin.
**/
@:native("FileWriter")
extern class FileWriter extends js.html.EventTarget
{
	static inline var DONE : Int = 2;

	static inline var INIT : Int = 0;

	static inline var WRITING : Int = 1;

	var error(default,null) : FileError;

	var length(default,null) : Int;

	var onabort : js.html.Event -> Void;

	var onerror : js.html.Event -> Void;

	var onprogress : js.html.Event -> Void;

	var onwrite : js.html.Event -> Void;

	var onwriteend : js.html.Event -> Void;

	var onwritestart : js.html.Event -> Void;

	var position(default,null) : Int;

	var readyState(default,null) : Int;

	function abort() : Void;

	function seek( position : Int ) : Void;

	function truncate( size : Int ) : Void;

	function write( data : js.html.Blob ) : Void;

}
