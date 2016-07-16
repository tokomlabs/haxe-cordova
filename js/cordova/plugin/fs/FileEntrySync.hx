package js.cordova.plugin.fs;

/**
This file is part of the Haxe externs for the [cordova-plugin-file](https://github.com/apache/cordova-plugin-file) plugin.
**/
@:native("FileEntrySync")
extern class FileEntrySync extends EntrySync
{
	function createWriter() : FileWriterSync;

	function file() : js.html.File;

}
