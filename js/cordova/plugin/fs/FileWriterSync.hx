package js.cordova.plugin.fs;

/**
This file is part of the Haxe externs for the [cordova-plugin-file](https://github.com/apache/cordova-plugin-file) plugin.
**/
@:native("FileWriterSync")
extern class FileWriterSync
{
	var length(default,null) : Int;

	var position(default,null) : Int;

	function seek( position : Int ) : Void;

	function truncate( size : Int ) : Void;

	function write( data : js.html.Blob ) : Void;

}
