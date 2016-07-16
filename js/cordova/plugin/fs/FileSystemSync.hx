package js.cordova.plugin.fs;

/**
This file is part of the Haxe externs for the [cordova-plugin-file](https://github.com/apache/cordova-plugin-file) plugin.
**/
@:native("DOMFileSystemSync")
extern class FileSystemSync
{
	var name(default,null) : String;

	var root(default,null) : DirectoryEntrySync;

}
