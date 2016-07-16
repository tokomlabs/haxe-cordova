package js.cordova.plugin.fs;

/**
This file is part of the Haxe externs for the [cordova-plugin-file](https://github.com/apache/cordova-plugin-file) plugin.
**/
@:native("DirectoryReader")
extern class DirectoryReader
{
	function readEntries( successCallback : EntriesCallback, ?errorCallback : ErrorCallback ) : Void;

}
