package js.cordova.plugin.fs;

/**
This file is part of the Haxe externs for the [cordova-plugin-file](https://github.com/apache/cordova-plugin-file) plugin.
**/
@:native("FileEntry")
extern class FileEntry extends Entry
{
	function createWriter( successCallback : FileWriterCallback, ?errorCallback : ErrorCallback ) : Void;

	function file( successCallback : FileCallback, ?errorCallback : ErrorCallback ) : Void;

}
