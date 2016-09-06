package js.cordova.plugin.fs;

/**
This file is part of the Haxe externs for the [cordova-plugin-file](https://github.com/apache/cordova-plugin-file) plugin.
**/
@:native("FileReader")
extern class FileReader extends js.html.EventTarget
{
	var readyState(default,null) : Int;
	
	var error(default,null) : Dynamic;
	
	var result(default,null) : Dynamic;

	var onloadstart : js.html.Event -> Void;
	
	var onprogress : js.html.Event -> Void;
	
	var onload : js.html.Event -> Void;
	
	var onerror : js.html.Event -> Void;
	
	var onloadend : js.html.Event -> Void;
	
	var onabort : js.html.Event -> Void;

	function new();

	function abort() : Void;

	function readAsText( file : js.html.File, encoding : String ) : Void;

	function readAsDataURL( file : js.html.File ) : Void;

	function readAsBinaryString( file : js.html.File ) : Void;

	function readAsArrayBuffer( file : js.html.File ) : Void;
}
