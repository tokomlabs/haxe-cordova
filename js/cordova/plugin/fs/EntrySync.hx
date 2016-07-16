package js.cordova.plugin.fs;

/**
This file is part of the Haxe externs for the [cordova-plugin-file](https://github.com/apache/cordova-plugin-file) plugin.
**/
@:native("EntrySync")
extern class EntrySync
{
	var filesystem(default,null) : FileSystemSync;

	var fullPath(default,null) : String;

	var isDirectory(default,null) : Bool;

	var isFile(default,null) : Bool;

	var name(default,null) : String;

	function copyTo( parent : DirectoryEntrySync, name : String ) : EntrySync;

	function getMetadata() : Metadata;

	function getParent() : DirectoryEntrySync;

	function moveTo( parent : DirectoryEntrySync, name : String ) : EntrySync;

	function remove() : Void;

	function toURL() : String;

}
