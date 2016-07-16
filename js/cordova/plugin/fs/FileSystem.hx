package js.cordova.plugin.fs;

/**
This file is part of the Haxe externs for the [cordova-plugin-file](https://github.com/apache/cordova-plugin-file) plugin.
**/
@:native("DOMFileSystem")
extern class FileSystem
{
	var name(default,null) : String;

	var root(default,null) : DirectoryEntry;

}
