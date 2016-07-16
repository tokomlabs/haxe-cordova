package js.cordova.plugin.fs;

/**
This file is part of the Haxe externs for the [cordova-plugin-file](https://github.com/apache/cordova-plugin-file) plugin.
**/
@:native("DirectoryEntrySync")
extern class DirectoryEntrySync extends EntrySync
{
	function createReader() : DirectoryReaderSync;

	function getDirectory( path : String, flags : Dynamic ) : DirectoryEntrySync;

	function getFile( path : String, flags : Dynamic ) : FileEntrySync;

	function removeRecursively() : Void;

}
