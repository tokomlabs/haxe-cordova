package js.cordova.plugin.fs;

/**
This file is part of the Haxe externs for the [cordova-plugin-file](https://github.com/apache/cordova-plugin-file) plugin.
**/
@:native("DirectoryEntry")
extern class DirectoryEntry extends Entry
{
	function createReader() : DirectoryReader;

	function getDirectory( path : String, ?options : Dynamic, ?successCallback : EntryCallback, ?errorCallback : ErrorCallback ) : Void;

	function getFile( path : String, ?options : Dynamic, ?successCallback : EntryCallback, ?errorCallback : ErrorCallback ) : Void;

	function removeRecursively( successCallback : js.cordova.plugin.fs.VoidCallback, ?errorCallback : ErrorCallback ) : Void;

}
