package js.cordova.plugin.fs;

/**
This file is part of the Haxe externs for the [cordova-plugin-file](https://github.com/apache/cordova-plugin-file) plugin.
**/
@:native("Entry")
extern class Entry
{
	/** The file system on which the entry resides. */
	var filesystem(default,null) : FileSystem;

	var fullPath(default,null) : String;

	/** The entry is a directory. */
	var isDirectory(default,null) : Bool;

	/** The entry is a file. */
	var isFile(default,null) : Bool;

	/** The name of the entry, excluding the path leading to it. */
	var name(default,null) : String;

	function copyTo( parent : DirectoryEntry, ?name : String, ?successCallback : EntryCallback, ?errorCallback : ErrorCallback ) : Void;

	function getMetadata( successCallback : MetadataCallback, ?errorCallback : ErrorCallback ) : Void;

	function getParent( ?successCallback : EntryCallback, ?errorCallback : ErrorCallback ) : Void;

	function moveTo( parent : DirectoryEntry, ?name : String, ?successCallback : EntryCallback, ?errorCallback : ErrorCallback ) : Void;

	function remove( successCallback : js.cordova.plugin.fs.VoidCallback, ?errorCallback : ErrorCallback ) : Void;

	function toURL() : String;

	function toInternalURL() : String;

}
