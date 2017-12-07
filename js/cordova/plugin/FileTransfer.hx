package js.cordova.plugin;

import js.cordova.plugin.fs.FileEntry;

@:enum
abstract FileTransferErrorCode(Int) from Int to Int {
	var FILE_NOT_FOUND_ERR = 1;
	var INVALID_URL_ERR = 2;
	var CONNECTION_ERR = 3;
	var ABORT_ERR = 4;
	var NOT_MODIFIED_ERR = 5;
}

typedef FileTransferError = {
	code : FileTransferErrorCode,
	source : String,
	target : String,
	http_status : Int,
	body : String,
	exception : String
}

typedef FileUploadResult = {
	bytesSent : Int,
	responseCode : Int,
	response : String,
	headers : haxe.DynamicAccess<String> // ios only
}

typedef FileTransferUploadOptions = {
	? fileKey : String,
	? fileName : String,
	? httpMethod : String,
	? mimeType : String,
	? params : String,
	? chunkedMode : Bool,
	? headers : haxe.DynamicAccess<String>
}

typedef FileTransferDownloadOptions = {
	? header : haxe.DynamicAccess<String>
}

/**
Extern for the [cordova-plugin-file-transfer](https://github.com/apache/cordova-plugin-file-transfer) plugin.
**/
@:native("window.FileTransfer")
extern class FileTransfer {
	public function new();
	public function upload(fileURL : String, server : String, successCallback : FileUploadResult -> Void, errorCallback : FileTransferError -> Void, ? options : FileTransferUploadOptions, ? trustAllHosts : Bool) : Void;
	public function download(source : String, target : String, successCallback : FileEntry -> Void, errorCallback : FileTransferError -> Void, ? trustAllHosts : Bool, ? options : FileTransferDownloadOptions) : Void;
	public function abort() : Void;
}
