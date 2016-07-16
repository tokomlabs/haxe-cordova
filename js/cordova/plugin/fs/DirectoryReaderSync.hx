package js.cordova.plugin.fs;

/**
This file is part of the Haxe externs for the [cordova-plugin-file](https://github.com/apache/cordova-plugin-file) plugin.
**/
@:native("DirectoryReaderSync")
extern class DirectoryReaderSync
{
	function readEntries() : Array<EntrySync>;

}
